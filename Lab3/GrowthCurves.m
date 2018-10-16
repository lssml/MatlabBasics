%Growth Curves
%Bill Xu

x = linspace(1,7);
y1 = x;
y2 = x.^2;
y3 = x.^(1/4);
y4 = log(x+1);

figure
plot(x, y1, x,y2, x,y3, x,y4,'Linewidth',2);
legend('n','n^2','n^{1/4}','log(n+1)');
title('Curve Growth Comparison');
xlabel('n');
ylabel('f(n)');


figure 
syms n
solvn = vpasolve(n.^(1/4)==log(n+1), n, [1 10]);

semilogx(solvn, log(solvn+1), 'Marker', 'x','MarkerSize',15);
x = linspace(solvn-1, solvn+1);
hold on
semilogx(x, x.^(1/4), x, log(x+1),'Linewidth',2);
title('Crossing Point');
xlabel('log(n)');
ylabel('f(n)');
legend('CrossPoint','n^{1/4}','log(n+1)');
hold off


