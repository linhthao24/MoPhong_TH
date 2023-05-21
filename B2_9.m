a = 5;
b = 3;
N = a * b;
data = randi([0 1], 1, (N + 1) * 10);
data1 = reshape(data, [], 2);
data2 = bi2de(data1, 2);
y = pammod(data2,4); % dieu che 4-ASK 
scatterplot(y);