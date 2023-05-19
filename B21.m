function [ gt ] = B21(a, b )
    N = a*b;
    sum = 0;
    for i = 1:N
        sum = sum + (-2)^a/exp(-i);
    end
    gt = sprintf('%.5f',sum);
end

