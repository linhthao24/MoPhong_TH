% 4 - QAM
% snr = Cs tin hieu / Cs nhieu
% xac dinh cs tin hieu truoc khi thuc hien
% th?c hi?n tich phan se ???c tin hieu 1 bit 1 là T
% cong suat cua tin hieu so bit 1 * T
clear all;
T = 0.1; % chu ky bit
N = 15;
bits = randi([0 1], 1, N*50);
count = 0;
for i = 1:length(bits)
    if bits(i) == 1
        count = count + 1;
    end
end
P = count*T;
Pr = 5;
SNR = P/Pr;
data = reshape(bits,[],2);
data1 = bi2de(data,2,'left-msb');
y = qammod(data1,4);
scatterplot(y);
y1 = awgn(y,SNR,'measured');
scatterplot(y1);