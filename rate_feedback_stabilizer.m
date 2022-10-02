clc;
close all;
clear all;


numc = 250 * [1 45 500];
denc = [1 58.5 13645 270962.5 274875 137500];

t = 0:.05:30;
c = step(numc, denc, t);
St = stepinfo (c) 
disp (c)
plot(t, c), grid
timespec(numc, denc)
