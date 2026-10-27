function [c, ceq] = constraints_steer(x, p)
    L_BC      = x(1);
    gamma     = x(2);
    L_bieleta1 = x(3);
    
    % Evaluar esfuerzos con las 3 variables
    [~, ~, r_pandeo] = calc_esfuerzos(L_BC, gamma, L_bieleta1, p);
    
    % Restricción: El pandeo no puede superar 0.8
    c = r_pandeo - 0.8;
    
    ceq = [];
end