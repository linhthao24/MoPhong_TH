function [ kq, kq2 ] = B19( N )
    sum = 0;
    i = 0;
    while sum < N*100
        i = i + 1;
        sum = sum + i^2;
        %i = i + 1;
    end
    kq = i-1;
    kq2 = sum;
end

