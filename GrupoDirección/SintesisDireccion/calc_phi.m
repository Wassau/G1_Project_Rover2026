function phi = calc_phi(x, nq, mref)
% Ecuaciones de la síntesis de la dirección (cuadrilátero RRRR simétrico).
%   x    = [q_1; q_2; ...; q_np; c]
%   q_i  = [xB yB xC yC thetaAB thetaBC thetaDC]'     (nq = 7)
%   c    = [xA yA xD yD L_AB L_BC L_DC gamma]'        (nc = 8)
%   mref = [deltaL_i deltaR_i] en rad, una fila por posición
%
% A = pivote rueda izquierda, D = pivote rueda derecha (fijos al chasis)
% B = extremo brazo izquierdo, C = extremo brazo derecho
% Convención: x hacia la derecha, y hacia delante, ángulos positivos = giro a la izquierda.

p   = parametros();
np  = size(mref,1);
nqp = nq*np;

c   = x(nqp+1 : nqp+8);
xA = c(1); yA = c(2); xD = c(3); yD = c(4);
LAB = c(5); LBC = c(6); LDC = c(7); gam = c(8);

phi = zeros(8*np + 7, 1);

for i = 1:np
    q = x((i-1)*nq+1 : i*nq);
    xB = q(1); yB = q(2); xC = q(3); yC = q(4);
    tAB = q(5); tBC = q(6); tDC = q(7);

    phi((i-1)*8+1 : i*8) = [ ...
        xB - xA - LAB*cos(tAB);                 % (1)
        yB - yA - LAB*sin(tAB);                 % (2)
        xC - xB - LBC*cos(tBC);                 % (3)
        yC - yB - LBC*sin(tBC);                 % (4)
        xC - xD - LDC*cos(tDC);                 % (5)
        yC - yD - LDC*sin(tDC);                 % (6)
        tAB - (-pi/2 + gam + mref(i,1));        % condición 1: giro rueda izquierda
        tDC - (-pi/2 - gam + mref(i,2)) ];      % condición 2: giro rueda derecha
end

% Constantes fijadas por diseño (6 ecuaciones)
phi(8*np+1 : 8*np+6) = [ xA; yA; xD - p.Vs; yD; LAB - p.Larm; LDC - p.Larm ];

% Recta exacta: en delta=0 las ruedas quedan paralelas (1 ecuación)
phi(8*np+7) = LBC - (p.Vs - 2*LAB*sin(gam));
end