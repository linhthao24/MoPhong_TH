function [ gt ] = B23( a,b )
    f = @(x) sin(x);
    N = a*b;
    delta = (b-a)/(N*100);
    x = a:delta:b;
    for i = 1:length(x) - 1
        x1 = x(i) + delta/2;
        sum = sum + f(x1);%(exp(x1)*tan(x1^2)^-1)/cos(x1);
    end
    sum = 0;
    gt = delta*sum;
end

