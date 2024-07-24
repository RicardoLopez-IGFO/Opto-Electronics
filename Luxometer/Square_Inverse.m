%% LASER casero (Mario)
clear all; close all hidden; clc;

D=[0 20 40 60 80 100 120 140 160 180 200];
Iluminancia=[3533 3501 3487 3480 3323 3248 3206 3163 3098 2976 2787];
I=1./(D.^2);
E=I./(D.^2);

figure(1)
plot(D,Iluminancia); hold on;
title('LASER Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)'); 

figure(2)
plot(D,I); hold on;
title('Square Inverse Equation Graph');
ylabel('Relative Intensity'); xlabel('Distance (cm)');

%% LED casero (Mario)
clear all; close all hidden; clc;

D=[0 20 40 60 80 100 120 140 160 180 200];
Iluminancia=[9778 1281 475 336 242 179 149 129 115 92 36];
I=1./(D.^2);
E=I./(D.^2);

figure(1)
plot(D,Iluminancia); hold on;
title('Home LED Square Inverse Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)'); 

figure(2)
plot(D,I); hold on;
title('Square Inverse Equation Graph');
ylabel('Relative Intensity'); xlabel('Distance (cm)');

%% Fuentes Laboratorio (Luisito)
clear all; close all hidden; clc;


D=[10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200];
ILaser=[306 312 362 310 329 337 320 344 327 351 323 277 300 244 379 380 423 370 286 383];
IFoco=[8700 3106 1635 1050 708 510 381 300 242 197 165 144 123 107 94 83 75 66 60 54];

I=1./(D.^1);
E=I./(D.^2);

figure(1)
plot(D,ILaser); hold on;
title('Laboratory LASER Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)'); 

figure(2)
plot(D,IFoco); hold on;
title('Laboratory LED Source');
ylabel('Iluminance (lux)'); xlabel('Distance (cm)');

figure(3)
plot(D,I); hold on;
title('Square Inverse Equation Graph');
ylabel('Relative Intensity'); xlabel('Distance (cm)');