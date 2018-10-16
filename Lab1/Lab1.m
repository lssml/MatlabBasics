% Lab1 Just Plug it In 
% Bill Xu

prompt = 'What is the original radius in kilometers?';
r = input(prompt);
prompt = 'What is the change of radius in millimeters?';
deltar = input(prompt);

%Change of measurement in meter.
r = 1000*r;
delta = 0.001*r;

change1 = [1, 4*pi*(r + deltar)^2 - 4*pi*r^2];
change2 = [2, 4*pi*(2*r + deltar)*deltar];
change3 = [3, 8*pi*r*deltar];

printformat = 'Change in area in square meters, according to equation %d, is %.4f\n';
fprintf(printformat, change1, change2, change3);