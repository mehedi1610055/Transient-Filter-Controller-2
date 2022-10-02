clc;
close all;
clear all;


%PID in Series:

num=[250 5000];
den=[1 33.5 307.5 775 5500];

G=tf([num],[den]);                 

kp = 1.5
ki = -0.0015
kd = 0.28

Gc = pid(kp,ki,kd);

Mc = G * Gc;

step(Mc)

stepinfo(Mc)


