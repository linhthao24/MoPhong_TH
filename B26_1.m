a = 5;
b = 3;
t = max(a,b);
x0 = 0;
y0 = 1;
h = a*10^-2;
f = @(x,y) a*x^2 - b*y;
N = (t - 0)/h;
x(1) = x0;
y(1) = y0;
for i = 2:N
    x(i) = x(i-1) + h;
    y1 = y(i - 1) + h*f(x(i-1), y(i-1));
    y(i) = y(i-1) + h*(f(x(i-1),y(i-1)) + f(x(i),y1))/2;
end