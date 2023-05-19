T = 4;
t = -10:0.1:10;
y = 0*t;
y(t > -T/2 & t < T/2) = 1;
plot(t,y,'linewidth',2);
axis([-11 11 -2 2]);
grid;