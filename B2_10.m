% 4 - PSK
clear all;
N = 15;
bits = randi([0 1], 1, N*50);
data = reshape(bits,[],2);
data1 = bi2de(data,2,'left-msb');
y = pskmod(data1, 4);
y1 = awgn(y, 10, 'measured'); % tin hieu qua kenh awgn
scatterplot(y);
scatterplot(y1);