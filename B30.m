function B30( x )
    if x < 0
        disp('so am');
    else
        if x == 0
        disp('so 0');
        else
            kt = 0;
            for i = 2:x-1
                if mod(x,i) == 0
                    kt = 1;
                    break;
                end
            end
            if kt == 0
                disp('nguyen to');
            else
                disp('khong nguyen to');
            end
        end
    end
end

