clc;
close all;
clear all;

%%---TF OF AVR---%%

num = [250 5000];
den = [1 33.5 307.5 775 5500];

G = tf([num],[den]);

step(G)
stepinfo(G)

hold on

%%

%%---TF OF PID as Feedback---%%

kp = 0.0001
ki = 3
kd = 1

num1 = [kd kp ki];
denum1 = [1 0];

temp1 = tf([num1],[denum1]);

ans1 = feedback(G,temp1);

step(ans1)
stepinfo(ans1)

hold on

%%

%%---TF OF Rate Feedback Stabilizer---%%

num2 = 250 * [1 45 500];
denum2 = [1 58.5 13645 270962.5 274875 137500];

ans2 = tf([num2],[denum2]);

step(ans2)
stepinfo(ans2)

%%

%%---TF OF Transient Filter---%%


R = 30
C = 9e-03
L = 0.3

numc = [R*C*L R*C 0];
denumc = [L*C R*C 1];

f_back = tf([numc],[denumc]);

ans = feedback(G,f_back);

step(ans)
stepinfo(ans)

axis([0 12 -0.4 2])

