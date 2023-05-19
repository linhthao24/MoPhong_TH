function [ gt ] = B20( N )
    a(1) = 1;
    a(2) = 1;
    for i = 3:N
        a(i) = a(i-1) + a(i-2); 
    end
    gt = a(N);
end

