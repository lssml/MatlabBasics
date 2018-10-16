%Cool it
%Bill Xu

x = linspace(1,7,61);
y = linspace(1,5,41);
[X,Y] = meshgrid(x,y);
T = temperature(X,Y);
T(1,:)=0;
T(:,1)=0;
T(41,:)=0;
T(:,61)=0;

figure
nSteps=100;
for i = 1:nSteps
         surf(x,y,T);
         axis([0 6 0 4 0 100]);
         title(['time step = ', num2str(i)],'FontSize',14);
         pause(.1);
         shg;
         T = average(T);
end
saveas(gcf,'3Dtime100','pdf')


figure
for i = 1:nSteps
         pcolor(T);
         colormap('hot');
         caxis([0,100]);
         colorbar;
         title(['time step = ', num2str(i)],'FontSize',14);
         pause(.1);
         shg;
         T = average(T);
end
saveas(gcf,'hotmapTime100','pdf')



function M = average(T)
[m,n] = size(T);
M(1,:)=0;
M(:,1)=0;
M(m,:)=0;
M(:,n)=0;
for i = 2:(m-1)
    for j = 2:(n-1)
        M(i,j)= (T(i-1,j)+T(i+1,j)+T(i,j+1)+T(i,j-1))/4;
    end
end
end