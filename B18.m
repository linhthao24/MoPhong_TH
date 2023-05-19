function [ kq ] = B18( N )
    tich = 1;
    for i = 1:N
        tich = i*tich;
    end
    kq = tich;
end

