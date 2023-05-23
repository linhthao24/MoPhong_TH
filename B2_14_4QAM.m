clear all
% 4QAM 
a = 5;
bits = randi([0 1], 1, a*100);
bits = reshape(bits,[], 2);
bits = bi2de(bits, 2, 'left-msb');
Rb = 50*10^6 ;
% dieu che tin hieu: chuyen sang dang ma -> dieu che
y = qammod(bits, 4);
scatterplot(y);
Rb = 2*Rb; % dieu che 4QAM 2 bit/ 1 sym
Tb = 1/Rb; % chu ky symbol
T = length(bits)*Tb; % thoi gian cua toan bo tin hieu
Rs = 20*Rb; % 20 mau ung vs 1 bit
Ts = 1/Rs; % chu ky 1 mau
t = 0:Ts:T;
x = zeros(size(t));
for i = 1:length(y)
    x((i-1)*20 + 1 : i*20) = y(i);
end
%x(length(x)) = [];
%scatterplot(x);
%plot(t(1:1000), x(1:1000));
%dieu che song mang
Es = 1; % tu chon
Tsym = Tb; % dieu che BPSK nen 1 symbol mang 1 bit
p = rectpuls((t - 0.5*Tsym)/Tsym);
%figure; sqrt(2*Es/Tsym)*
plot(t,p);
% gan tin hieu vao song mang
%s = x.*p;
%figure;
%plot(t(1:1000),s(1:1000));