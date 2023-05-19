N = 1000;                    % S? l??ng m?u
t = linspace(0, 2*pi, N);    % T?o m?t m?ng t t? 0 ??n 2*pi
dt = t(2) - t(1);            % B??c th?i gian

x = sin(t);                  % T�nh gi� tr? sin(t)
y = cos(t);                  % T�nh gi� tr? cos(t)

output = zeros(1, N);        % Kh?i t?o m?ng k?t qu?

for i = 1:N
    for j = 1:N
        k = mod(i-j, N) + 1;  % T�nh ch? s? m?ng xoay v�ng
        output(i) = output(i) + x(j) * y(k) * dt;  % C?ng d?n t�ch ch?p
    end
end

plot(t, output)              % V? ?? th? t�ch ch?p