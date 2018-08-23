clear 
close all

s = tf('s');

P = 1/(1+s);

G = 1/s;

F = 1/(s^2+s+1);
