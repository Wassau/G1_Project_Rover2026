function J = calc_jac(x, nq, mref)
% Jacobiano numérico (diferencias centrales) de calc_phi.
n  = numel(x);
f0 = calc_phi(x, nq, mref);
J  = zeros(numel(f0), n);
for k = 1:n
    h  = 1e-7*max(1, abs(x(k)));
    xp = x; xp(k) = xp(k) + h;
    xm = x; xm(k) = xm(k) - h;
    J(:,k) = (calc_phi(xp,nq,mref) - calc_phi(xm,nq,mref))/(2*h);
end
end