%Dirección del rover: síntesis de generación de función (trapecio de dirección)
% Entrada: giro de la rueda izquierda (deltaL). Salida: giro de la rueda derecha (deltaR)
% Objetivo: ley de Ackermann  cot(dR) - cot(dL) = Vs/b
%
%   A, D = pivotes de las ruedas (fijos), B, C = extremos de los brazos, BC = barra de acoplamiento
%   Constantes fijadas: xA, yA, xD, yD, L_AB, L_DC.   Constantes libres: L_BC y gamma.

clear
clc
close all

%----------
%PARÁMETROS
p    = parametros();
Vs   = p.Vs;
b    = p.b;
Larm = p.Larm;
dmax = p.dmax;
np   = p.np;

% Ley de Ackermann: giro exterior en función del interior (con signo)
ack = @(dL) atan( tan(dL) ./ (1 + (Vs/b).*tan(dL)) );

%-----------
%CONDICIONES
% Posiciones de síntesis: giros de la rueda izquierda de 0 a dmax
dL_pos = linspace(0, dmax, np)';
dR_pos = ack(dL_pos);
mref   = [dL_pos, dR_pos];          % cada fila = [deltaL_des, deltaR_des] (rad)

disp('=== POSICIONES DE SÍNTESIS ===')
disp('  deltaL (°)   deltaR (°)')
disp(rad2deg(mref))

%------------------
%DIMENSIONES VECTOR
nq  = 7;            % coordenadas por posición
nc  = 8;            % constantes totales (6 fijas + 2 libres)
nqp = nq*np;
% por posición: 6 restricciones geométricas + 2 condiciones de síntesis
% total: 8*np + 6 ecuaciones,  7*np + 8 incógnitas

%------------------
%ESTIMACIÓN INICIAL
% Regla clásica: las prolongaciones de los brazos se cortan en el centro del eje trasero
gamma0 = atan(Vs/(2*b));
LBC0   = Vs - 2*Larm*sin(gamma0);

xini = zeros(nqp+nc, 1);
for i = 1:np
    tAB = -pi/2 + gamma0 + dL_pos(i);
    tDC = -pi/2 - gamma0 + dR_pos(i);
    xB = Larm*cos(tAB);        yB = Larm*sin(tAB);
    xC = Vs + Larm*cos(tDC);   yC = Larm*sin(tDC);
    tBC = atan2(yC-yB, xC-xB);
    xini((i-1)*nq+1 : i*nq) = [xB; yB; xC; yC; tAB; tBC; tDC];
end
% [xA yA xD yD L_AB L_BC L_DC gamma]
xini(nqp+1 : nqp+nc) = [0; 0; Vs; 0; Larm; LBC0; Larm; gamma0];

disp(' ')
disp(['Longitud de xini = ' num2str(length(xini)) '  (debe ser ' num2str(nq*np+nc) ')'])

%--------------------
%VERIFICACION INICIAL
phi_ini = calc_phi(xini, nq, mref);
disp(['Nº de ecuaciones = ' num2str(length(phi_ini)) ',  nº de incógnitas = ' num2str(length(xini))])
disp(['Error inicial ||phi|| = ' num2str(norm(phi_ini))])

%-------------
%MÉTODO NEWTON
[x, phi, dat_iter, dat_error, dat_phi] = synthesis(xini, nq, nc, [], mref);

%----------
%RESULTADOS
c_res = x(nqp+1 : nqp+nc);
disp(' ')
disp('=== RESULTADOS DE LA SÍNTESIS ===')
disp(['L_AB  = ' num2str(c_res(5)) ' mm  (fijada)'])
disp(['L_DC  = ' num2str(c_res(7)) ' mm  (fijada)'])
disp(['L_BC  = ' num2str(c_res(6)) ' mm  (barra de acoplamiento)'])
disp(['gamma = ' num2str(rad2deg(c_res(8))) '°  (inclinación de los brazos)'])
disp(['Error final ||phi|| = ' num2str(dat_error(end))])

% Error respecto a Ackermann en todo el rango 
%dL_r  = linspace(-dmax, dmax, 201);
dL_r = linspace(-ack(dmax), dmax, 201);
dR_m  = steer_delta_out(c_res, dL_r);
dR_id = ack(dL_r);
err_deg = rad2deg(dR_m - dR_id);
disp(['Error máx. respecto a Ackermann = ' num2str(max(abs(err_deg))) '°'])

%--------
%GRÁFICAS
figure(1)
semilogy(0:length(dat_error)-1, dat_error, 'b-o', 'LineWidth', 1.5)
xlabel('Iteración'); ylabel('||\phi(x)||')
title('Convergencia del método de Newton')
grid on

% Posiciones de síntesis
vector_x = [c_res(1) c_res(3)];  vector_y = [c_res(2) c_res(4)];
for i = 1:np
    vector_x = [vector_x, x((i-1)*nq+1), x((i-1)*nq+3)];
    vector_y = [vector_y, x((i-1)*nq+2), x((i-1)*nq+4)];
end
margen = 90;
figure(2)
set(gcf, 'Position', [0 0 1920 500])
for i = 1:np
    subplot(1, np, i)
    dib_mec(x((i-1)*nq+1 : i*nq), c_res)
    xlim([min(vector_x)-margen, max(vector_x)+margen])
    ylim([min(vector_y)-margen, max(vector_y)+margen])
    title(sprintf('Posición %d\n\\delta_L=%.1f°, \\delta_R=%.1f°', i, ...
          rad2deg(dL_pos(i)), rad2deg(dR_pos(i))))
end
sgtitle('Posiciones de síntesis - Trapecio de dirección')

% Vista amplia (posición de giro máximo) para ver el centro de giro
figure(3)
dib_mec(x((np-1)*nq+1 : np*nq), c_res)
title('Giro máximo: perpendiculares de las ruedas y eje trasero')

% Ley obtenida vs Ackermann
figure(4)
subplot(1,2,1)
plot(rad2deg(dL_r), rad2deg(dR_id), 'b-', 'LineWidth', 2, 'DisplayName', 'Ackermann'); hold on
plot(rad2deg(dL_r), rad2deg(dR_m), 'r--', 'LineWidth', 2, 'DisplayName', 'Mecanismo sintetizado')
plot(rad2deg(dL_pos), rad2deg(dR_pos), 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Posiciones de síntesis')
xlabel('\delta_L (°)'); ylabel('\delta_R (°)')
title('Ley de giro'); legend('Location','best'); grid on; hold off
subplot(1,2,2)
plot(rad2deg(dL_r), err_deg, 'r-', 'LineWidth', 2); hold on
%plot(rad2deg(dL_pos), zeros(size(dL_pos)), 'ko', 'MarkerFaceColor', 'k')
plot(rad2deg(dL_pos), rad2deg(steer_delta_out(c_res,dL_pos) - dR_pos), 'ko', 'MarkerFaceColor','k')
xlabel('\delta_L (°)'); ylabel('\delta_R mecanismo - \delta_R Ackermann (°)')
title('Error respecto a Ackermann'); grid on; hold off

% Residuos finales
phi_final = calc_phi(x, nq, mref);
figure(5)
bar(abs(phi_final), 'FaceColor', [0.2 0.5 0.8])
xlabel('Componente de \phi'); ylabel('|\phi_i|')
title(sprintf('Residuos finales  —  ||\\phi|| = %.2e', norm(phi_final)))
grid on
set(gca, 'YScale', 'log')

% Evolución de las constantes libres
iter_vec = 0:size(dat_iter,1)-1;
figure(6)
subplot(1,2,1)
plot(iter_vec, dat_iter(:, nqp+6), 'r-o', 'LineWidth', 2, 'MarkerFaceColor', 'r')
xlabel('Iteración'); ylabel('L_{BC} (mm)'); title('Evolución L_{BC}'); grid on
subplot(1,2,2)
plot(iter_vec, rad2deg(dat_iter(:, nqp+8)), 'b-o', 'LineWidth', 2, 'MarkerFaceColor', 'b')
xlabel('Iteración'); ylabel('\gamma (°)'); title('Evolución \gamma'); grid on