%% Led Casero - distribución (Brenda)
clear all; close all hidden; clc;
x=-20:5:15; transpose(x);
y=-15:5:15; transpose(y);
D=140;
[X,Y] = meshgrid(x,y);
%{
   I=[
   170.1 195 204 216 230.4 240 245 236 231 227 208 188 185;...
   178 197.6 216 234.6 252.4 263.1 270 254 247 235 203 192 175;...
   193 198.3 224.8 248.3 266.4 278.9 280 270 262 241 228 199 170;...
   175 190 218.5 234 264 280 286 276 263 241 226 210 190;...
   182.2 205 222.2 240 264.5 264.5 282 280 272 256 234 220 185;...
   183 195 215 233 248 261 270 267 255 245 227 210 190;...
   172 202.2 210 220 237 245 248 250 243 233 219 199 182;...
   ];
%} 

E=[
  460 460 460 460 460 460 460 460;... 
  460 494.7 515.6 529.2 497.8 484.1 460.6 460;...
  460 522.1 546.6 548.8 529.2 513.5 472.3 460;...
  460 527.4 548.8 560.5 540.9 515.4 472.3 460;...
  460 518.4 518.4 552.7 548.8 533.1 501.7 460;...
  460 486.0 511.5 529.2 523.3 499.8 480.2 460;...
  460 460 460 460 460 460 460 460;...
  ]-364.56;
contour(X,Y,E, 'ShowText', 'on')
title('LED Source Isocandela Diagram');
ylabel('<- ? -> (cm)'); xlabel('<- ? -> (cm)'); 

max(E)
%%
x = -2:0.2:2;
y = -2:0.2:3;
[X,Y] = meshgrid(x,y);
Z = X.*exp(-X.^2-Y.^2);
contour(X,Y,Z,'ShowText','on')
