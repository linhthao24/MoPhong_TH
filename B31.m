N = 1000;                    % S? l??ng m?u
t = linspace(0, 2*pi, N);    % T?o m?t m?ng t t? 0 ??n 2*pi

x = sin(t);                  % Tính giá tr? sin(t)
y = cos(t);                  % Tính giá tr? cos(t)

output = conv(x, y);         % Tính tích ch?p b?ng hàm conv

t_conv = linspace(0, 4*pi, 2*N-1);  % T?o m?ng t cho k?t qu? tích ch?p

plot(t_conv, output)         % V? ?? th? tích ch?p