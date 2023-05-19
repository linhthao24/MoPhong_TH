N = 1000;                    % S? l??ng m?u
t = linspace(0, 2*pi, N);    % T?o m?t m?ng t t? 0 ??n 2*pi

x = sin(t);                  % T�nh gi� tr? sin(t)
y = cos(t);                  % T�nh gi� tr? cos(t)

output = conv(x, y);         % T�nh t�ch ch?p b?ng h�m conv

t_conv = linspace(0, 4*pi, 2*N-1);  % T?o m?ng t cho k?t qu? t�ch ch?p

plot(t_conv, output)         % V? ?? th? t�ch ch?p