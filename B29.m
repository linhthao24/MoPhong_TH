b = 5;
T = 2;
t = 0:T/1000:T;
y = zeros(size(t));
for i = 1:length(t)
    y(i) = exp(t(i)^2);
end
plot(t, y, 'linewidth', 2);
t1 = 0:T/1000:b*T + (b-1)*T/1000;
y1 = zeros(size(t1));
for i = 1:5
    y1((i-1)*length(t)+1 : i*length(t)) = y;
end
figure;
plot(t1, y1, 'r', 'linewidth', 2);
axis([0 10 -0.5 2*max(y1)]);