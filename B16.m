T = 4;
t = -10:0.1:10;
y = 1 - abs(t)/T;
y(t < -T | t > T) = 0;
plot(t,y,'linewidth',2);
axis([-11 11 -2 2]);
grid;