clear all
% BPSK = 2_ASK
a = 4;
bits = randi([0 1], 1, a*100);
Rb = 50*10^6 ;
% dieu che tin hieu: chuyen sang dang ma NRZ -> dieu che
y = pammod(bits, 2);
Tb = 1/Rb; % chu ky bit
T = length(bits)*Tb; % thoi gian cua toan bo tin hieu
Rs = 20*Rb; % 20 mau ung vs 1 bit
Ts = 1/Rs; % chu ky 1 mau
t = 0:Ts:T;
x = zeros(size(t));
for i = 1:length(y)
    if y(i) == 1
        x((i-1)*20 + 1 : i*20) = 1;
    else
        x((i-1)*20 + 1 : i*20) = -1;
    end
end
%plot(t(1:1000), x(1:1000));
% dieu che song mang
Es = 1; % tu chon
Tsym = Tb; % dieu che BPSK nen 1 symbol mang 1 bit
p = sqrt(2*Es/Tsym)*sinc((2*pi*t)/Tsym);
%plot(t(1:500),p(1:500));
% gan tin hieu vao song mang
s = x.*p;
plot(t(1:500),s(1:500));