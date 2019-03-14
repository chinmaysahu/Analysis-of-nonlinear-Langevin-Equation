% % Exact Solution
syms y
X_exact = simplify(dsolve('D2X + 0.02*DX + X + 0*X^3 - sin(y) = 0','X(0)=0, DX(0)=0','y'));
pretty(X_exact); %solve langevin equation gives exact solution
ezplot(X_exact,[0, 20])
