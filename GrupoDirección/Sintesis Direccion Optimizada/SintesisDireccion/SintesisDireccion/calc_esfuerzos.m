function [sigma_max, F_bieleta, r_pandeo] = calc_esfuerzos(L_BC, gamma, L_bieleta1, p)
    
    % --- CÁLCULO DEL PAR OPERATIVO ---
    % El servo solo hace la fuerza para vencer la fricción (no usa su par máximo)
    M_friccion = p.mu * (2 * p.N_rueda) * p.r_contact;
    % Par operativo + impacto dinámico
    T_operativo= M_friccion * p.coef_seg * p.factor_impacto;   
    
    % --- CÁLCULO DEL ÁNGULO DE TRANSMISIÓN ---
    % Relación lineal: con 125mm -> 25°. Alargar abre el ángulo.
    angulo_min_deg = 25 + (L_bieleta1 - 125) * 0.6; 
    angulo_min_deg = max(angulo_min_deg, 15); 
    angulo_min_deg = min(angulo_min_deg, 85); 
    theta_1 = deg2rad(angulo_min_deg);
    
    % Fuerza en la bieleta (usando T_operativo)
    F_bieleta = T_operativo / (p.r_crank * sin(theta_1)); 

    % Esfuerzo axial
    A_bieleta = pi * (p.d_bieleta^2) / 4;
    sigma_axial = abs(F_bieleta) / A_bieleta;

    % Pandeo (Fórmula de Euler)
    I_bieleta = pi * p.d_bieleta^4 / 64;
    F_crit = pi^2 * p.E * I_bieleta / L_BC^2;
    r_pandeo = abs(F_bieleta) / F_crit;

    sigma_max = sigma_axial;

    % Penalización si pandea
    if r_pandeo >= 0.8
        sigma_max = 1e6; 
    end
end