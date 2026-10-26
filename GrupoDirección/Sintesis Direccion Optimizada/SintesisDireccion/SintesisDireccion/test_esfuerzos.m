% Test de esfuerzos con la solución de Newton
p = steer_params();
c_res = [0; 0; p.Vs; 0; p.Larm; 180; p.Larm; deg2rad(15)];

[sigma_max, F_BC, M_AB] = calc_esfuerzos(c_res(6), c_res(8), p);

disp(['Fuerza en BC: ' num2str(F_BC) ' N']);
disp(['Momento en AB: ' num2str(M_AB) ' N·mm']);
disp(['Esfuerzo máximo: ' num2str(sigma_max) ' MPa']);
disp(['Esfuerzo admisible: ' num2str(p.sigma_adm) ' MPa']);

if sigma_max < p.sigma_adm
    disp('Diseño válido');
else
    disp('Diseño NO válido: necesita optimización');
end