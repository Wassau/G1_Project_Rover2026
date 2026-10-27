function dR = steer_delta_out(c, dL)
% Análisis del cuadrilátero: dado el giro de la rueda izquierda dL (rad),
% devuelve el giro de la rueda derecha dR (rad) para las constantes c.
xA = c(1); yA = c(2); xD = c(3); yD = c(4);
LAB = c(5); LBC = c(6); LDC = c(7); gam = c(8);

dR = nan(size(dL));
for k = 1:numel(dL)
    t = -pi/2 + gam + dL(k);
    B = [xA + LAB*cos(t); yA + LAB*sin(t)];
    D = [xD; yD];
    v = D - B;  d = norm(v);  u = v/d;
    a  = (LBC^2 - LDC^2 + d^2)/(2*d);
    h2 = LBC^2 - a^2;
    if h2 < 0, continue, end                 
    n  = [-u(2); u(1)];
    C  = B + a*u - sqrt(h2)*n;               
    tDC = atan2(C(2)-yD, C(1)-xD);
    dR(k) = atan2(sin(tDC+pi/2+gam), cos(tDC+pi/2+gam));
end
end
