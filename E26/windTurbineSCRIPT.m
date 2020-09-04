clear
clc
load = [0.98	1.96	2.94	3.92	4.9	5.88	6.86	7.84	8.82	9.8	10.78	11.76	12.74	13.72	14.7	15.68	16.66	17.64	18.62	19.6];
displacement = [2.861*10^(-2)	5.721*10^(-2)	8.520*10^(-2)	1.144*10^(-1)	1.430*10^(-1)	1.716*10^(-1)	2.002*10^(-1)	2.288*10^(-1)	2.575*10^(-1)	2.861*10^(-1)	3.147*10^(-1)	3.433*10^(-1)	3.719*10^(-1)	4.005*10^(-1)	4.291*10^(-1)	4.577*10^(-1)	4.863*10^(-1)	5.149*10^(-1)	5.435*10^(-1)	5.721*10^(-1)];
scatter(displacement,load);
title('Displacement of a Loaded Turbine Tower');
xlabel('Displacement (mm)');
ylabel('Load (N)');
disp('Polyfit properties');
y1 = polyfit(displacement,load,1)
hold on
plot(displacement,polyval(y1,displacement));
legend('R^2=1.0000','y = 34.25x+0.0039');
grid;
hold off;
R = corrcoef(displacement,load)

