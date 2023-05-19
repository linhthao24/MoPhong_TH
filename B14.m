x = 0:pi/16:6*pi;
x1 = 0:pi:6*pi;
y1 = sin(x);
y11 = sin(x1);
y2 = cos(x);
y22 = cos(x1);
plot(x,y1,'r',x1,y11,'yo');
hold on
plot(x,y2,'b',x1,y22,'go');
xlabel('time');
ylabel('bien do');
legend('sin','sin1/2','cos','cos1/2');
grid;