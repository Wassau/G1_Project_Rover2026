function J = fobj_steer(x, p)
    L_BC       = x(1);  
    gamma      = x(2);  
    L_bieleta1 = x(3);  
    
    c_res = [0; 0; p.Vs; 0; p.Larm; L_BC; p.Larm; gamma];
    
    % 1) Error Ackermann
    dL_max_neg = -atan(tan(p.dmax) / (1 + (p.Vs/p.b)*tan(p.dmax)));
    dL_r = linspace(dL_max_neg, p.dmax, 50);
    dR_m = steer_delta_out(c_res, dL_r);
    dR_id = atan(tan(dL_r) ./ (1 + (p.Vs/p.b)*tan(dL_r)));
    E_Ack = max(abs(dR_m - dR_id));
    
    % Escudo de seguridad para geometrías imposibles
    if E_Ack > deg2rad(5.0) || isnan(E_Ack)
        J = 1e6;
        return;
    end
    
    % 2) Esfuerzos
    [~, F_bieleta, r_pandeo] = calc_esfuerzos(L_BC, gamma, L_bieleta1, p);
    
    % 3) Pesos
    E_ref = deg2rad(2);  
    F_ref = 30;          
    r_ref = 0.8;
    
    w1 = 0.5; w2 = 0.3; w3 = 0.2;
    
    J = w1*(E_Ack/E_ref) + w2*(F_bieleta/F_ref) + w3*(r_pandeo/r_ref);
end