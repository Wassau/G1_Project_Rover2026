function p = steer_params()
% Parámetros de diseño de la dirección (mm y rad).
p.Vs   = 240;         % distancia entre pivotes de las ruedas delanteras (mm)
p.b    = 330;         % batalla: eje delantero - eje trasero (mm)
p.Larm = 20;          % longitud de los brazos de dirección (mm)
p.dmax = 20*pi/180;   % ángulo máximo de la rueda interior (rad)
p.np   = 5;           % nº de posiciones de síntesis 
end