function [ gt ] = B22(a, b )
    N = a*b;
    sum = 1;
    for i = 1:N
        sum = sum*(sqrt((a*i+1)/2) + i^2);
    end
    gt = sprintf('%.5f',sum);
end

