function p = steer_params()
    % --- Geometría del Rover ---
    p.Vs   = 240;         % mm - ancho de vía
    p.b    = 330;         % mm - distancia entre ejes
    p.Larm = 30;          % mm - brazo del buje
    p.dmax = 40*pi/180;   % rad - giro máximo
    p.np   = 5;           % posiciones de síntesis
    
    % --- Servo ---
    p.T_servo   = 2059.4;   % N·mm (21 kg·cm) - Par MÁXIMO de bloqueo
    p.r_crank   = 25;       % mm - radio del crank fijo
    
    % --- Bieletas y Brazos ---
    p.d_bieleta = 3;        % mm - diámetro de las bieletas (Aluminio)
    p.b_arm     = 20;       % mm - ancho del soporte de aluminio
    p.h_arm     = 5;        % mm - espesor del soporte de aluminio
    
    % --- Material (ALUMINIO) ---
    p.E         = 210000;   % MPa - Módulo de Young del ACERO
    p.sigma_adm = 250; 
    
    % --- Fricción ---
    p.mu        = 0.7;      % goma-asfalto
    p.N_rueda   = 15.7;     % N - (6.4 kg * 9.81 / 4 ruedas)
    p.r_contact = 5;        % mm - scrub radius
    p.coef_seg  = 2;        % coeficiente de seguridad
    p.factor_impacto = 5;   % <-- Factor por baches/choques
end