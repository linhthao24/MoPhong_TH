% tan so Nyquist la tan so thoa man fs >= 2fmax
a = 6;
T = a;
A = 1.5*a;
f = 1/T;
t = 0:f:4*T;
fs = 2*f; % tan so nyquist
fm = 32*fs; % tan so lay  mau
tm = 1/fm;
tm = 0:tm:4*T;
plot(t,sin(t),'r','linewidth',2);
hold on
stem(tm,sin(tm));
hold off