function dib_mec(q, c)
% Entradas:
%   q = [xB, yB, xC, yC, thetaAB, thetaBC, thetaDC]          (7)
%   c = [xA, yA, xD, yD, L_AB, L_BC, L_DC, gamma]            (8)
% Unidades: mm y rad.
    p = steer_params();

    xB = q(1); yB = q(2);
    xC = q(3); yC = q(4);
    tAB = q(5); tDC = q(7);
    xA = c(1); yA = c(2);
    xD = c(3); yD = c(4);
    gam = c(8);

    % Giro de cada rueda (positivo = izquierda)
    dL = tAB + pi/2 - gam;
    dR = tDC + pi/2 + gam;

    hw = 12;  hl = 40;      % semiancho y semilargo de la rueda (mm)

    hold on
    % Eje trasero y perpendiculares de las ruedas delanteras
    plot([xA-0.5*p.Vs, xD+0.5*p.Vs], [-p.b -p.b], 'k-', 'LineWidth', 1);
    perp_line(xA, yA, dL, p.b);
    perp_line(xD, yD, dR, p.b);

    % Ruedas
    rueda(xA, yA, dL, hw, hl);
    rueda(xD, yD, dR, hw, hl);

    % Eje delantero (eslabón fijo A-D)
    plot([xA xD], [yA yD], 'k-', 'LineWidth', 1.5);
    % Brazo izquierdo A-B
    plot([xA xB], [yA yB], 'b-o', 'LineWidth', 2.5, 'MarkerFaceColor', 'b');
    % Barra de acoplamiento B-C
    plot([xB xC], [yB yC], 'r-o', 'LineWidth', 2.5, 'MarkerFaceColor', 'r');
    % Brazo derecho D-C
    plot([xD xC], [yD yC], 'g-o', 'LineWidth', 2.5, 'MarkerFaceColor', 'g');
    % Puntos fijos
    plot(xA, yA, 'ks', 'MarkerSize', 12, 'MarkerFaceColor', 'k');
    plot(xD, yD, 'ks', 'MarkerSize', 12, 'MarkerFaceColor', 'k');

    text(xA, yA, ' A', 'FontSize', 14);
    text(xB, yB, ' B', 'FontSize', 14);
    text(xC, yC, ' C', 'FontSize', 14);
    text(xD, yD, ' D', 'FontSize', 14);
    text(xA - 2*hl, yA + 1.6*hl, sprintf('\\delta_L=%.1f°', rad2deg(dL)), 'FontSize', 9);
    text(xD - hl,   yD + 1.6*hl, sprintf('\\delta_R=%.1f°', rad2deg(dR)), 'FontSize', 9);

    axis equal; grid on;
    xlabel('x (mm)'); ylabel('y (mm)');
    hold off
end

function rueda(x0, y0, delta, hw, hl)
    eje  = [cos(pi/2 + delta); sin(pi/2 + delta)];   % dirección de avance
    perp = [-eje(2); eje(1)];                        % eje de giro de la rueda
    ex = x0 + hl*eje(1)*[1 1 -1 -1] + hw*perp(1)*[1 -1 -1 1];
    ey = y0 + hl*eje(2)*[1 1 -1 -1] + hw*perp(2)*[1 -1 -1 1];
    patch(ex, ey, [0.6 0.6 0.6], 'EdgeColor', 'k', 'LineWidth', 1.5, 'FaceAlpha', 0.5);
    plot(x0, y0, 'k+', 'MarkerSize', 12, 'LineWidth', 2);
end

function perp_line(x0, y0, delta, b)
    % Recta perpendicular a la rueda hasta cortar el eje trasero (y = -b)
    dir = [-cos(delta); -sin(delta)];
    if abs(dir(2)) < 1e-3, return, end
    t = (-b - y0)/dir(2);
    if abs(t) > 10*b, return, end                    % centro de giro demasiado lejos
    plot([x0, x0 + t*dir(1)], [y0, y0 + t*dir(2)], 'k--', 'LineWidth', 0.8);
end