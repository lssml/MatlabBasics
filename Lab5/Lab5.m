%Contours and Cross Sections
%Bill Xu

figure
x = linspace(1,7,100);
y = linspace(1,5,100);
[X,Y] = meshgrid(x,y);
T = temperature(X,Y);
mesh(X,Y,T);
title('3D plot');
saveas(gcf,'3Dplot','pdf');

figure
x = linspace(1,7,100);
y = linspace(1,5,100);
[X,Y] = meshgrid(x,y);
T = temperature(X,Y);
contour(X,Y,T);
title('Contour plot');
saveas(gcf,'Contour','pdf')


figure
subplot(3,1,1);
x = 1;
Y = linspace(1,5,100);
T = temperature(x,Y);
plot(Y, T);
title('Intersection(x=1)');

subplot(3,1,2);
x = 3;
Y = linspace(1,5,100);
T = temperature(x,Y);
plot(Y, T);
title('Intersection(x=3)');

subplot(3,1,3);
x = 5;
Y = linspace(1,5,100);
T = temperature(x,Y);
plot(Y, T);
title('Intersection(x=5)');
saveas(gcf,'x-Intersection','pdf')

figure
subplot(3,1,1);
y = 1;
X = linspace(1,7,100);
T = temperature(X,y);
plot(X, T);
title('Intersection(y=1)');

subplot(3,1,2);
y = 2;
X = linspace(1,7,100);
T = temperature(X,y);
plot(X, T);
title('Intersection(y=2)');

subplot(3,1,3);
y = 3;
X = linspace(1,7,100);
T = temperature(X,y);
plot(X, T);
title('Intersection(y=3)');
saveas(gcf,'y-Intersection','pdf')