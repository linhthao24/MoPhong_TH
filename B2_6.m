%AM
a = 5;
b = 3;
N = a*b;
f = N*100;
fc = 100*f;
% tin hieu
s = @(t, f) 5*cos(2*pi*f*t + 3);
% song mang
c = @(t, fc) 3*sin(2*pi*fc*t + 3);
% dieu che
Tc = 1/fc;
t = 0:Tc/100:2/f;

y = (1 + s(t,f)).*c(t,fc);
subplot(3,1,1);
plot(t,s(t,f));
subplot(3,1,2);
plot(t,c(t,f));
subplot(3,1,3);
plot(t,y);