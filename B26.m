a = 5;
b = 3;
% y' = a*x^2 - b^y
f = @(x,y) a*x^2 - b*y;
t = max(a,b);
x0 = 0;
y0 = 1;
h = a*10^-2;
x(1) = x0;
y(1) = y0;
N = (t - 0)/h;
for i = 2:N % 5 tren la dua tren dai thoi gian
    x(i) = x(i-1) + h;
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
end