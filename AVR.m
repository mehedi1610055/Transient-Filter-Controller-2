clc
clear
num=[250 5000];
den=[1 33.5 307.5 775 5500];
G=tf([num],[den]);                  %%---TF OF AVR---%%
step(G)
stepinfo(G)