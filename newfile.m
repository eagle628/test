close all
clear

s = tf('s');

P = 1/(1+s);

K = tf(1);

G = loopsens(P,K);

Ts = 0.01;
N = 1000;
u = randn(N,1);
t = (0:Ts:Ts*(N-1))';

y = lsim(G.Ti, u, t);

figure
plot(t,y)