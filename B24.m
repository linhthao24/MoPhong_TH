a = 2;
b = 5;
c1 = min(a,b);
c2 = max(a,b);
f = @(x) 4*x^3 - 13*x^2 + 13*x - 10;
f1 = f(c1);
f2 = f(c2);
eps = 0.000001;
while (c2 - c1)/c2 > eps
    c3 = (c2 + c1)/2;
    f3 = f(c3);
    if abs(f3) < eps
        ubreak;
    else
        if sign(f3) == sign(f2)
            c2 = c3;
            f2 = f3;
        else
            c1 = c3;
            f1 = f3;
        end
    end
end
disp(c3);