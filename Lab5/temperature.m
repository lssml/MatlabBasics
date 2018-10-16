%Contours and Cross Sections
%temperature.m
%Bill Xu


function t = temperature(x,y)
t = 100*exp(-0.4*((x-1).^2+0.7*(y-3).^2)) + 80*exp(-0.2*(2*(x-5).^2+1.5*(y-1).^2))
end