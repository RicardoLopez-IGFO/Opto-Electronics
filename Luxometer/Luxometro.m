clear all; close all hidden; clc;

D=[0 5 10 15 20 25 30 35 40 45 50 55 60];
Iluminancia=[767.1 767.1 486.6 287.6 187.9 134.8 101.8 79.5 65.5 23.7 44.9 37.9 32.4];
Iluminancia2=[767.1 767.1 767.1 480.5 315.3 199.0 140.8 109.5 85.6 70.7 59.3 49.2 41.7];
I=1./(D.^1);
E=I./(D.^2);

figure(1)
plot(D,Iluminancia); hold on;
title('Laboratory LASER Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)'); 

figure(2)
plot(D,Iluminancia2); hold on;
title('Laboratory Phone (LED) Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)');

figure(3)
plot(D,I); hold on;
title('Square Inverse Equation Graph');
ylabel('Relative Intensity'); xlabel('Distance (cm)');


