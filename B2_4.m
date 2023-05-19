% lay mau -> nen tin hieu -> ma hoa
a = 5;
T = 2*a; % tin hieu tu -a den a nen chu ky la 2a
f = 1/T; % tan so tin hieu
% ve tin hieu ban dau
t = -a:f:a;
plot(t,exp(t),'r','linewidth',1.5);

% lay mau
fs = 2*f; % tan so nyquist
fm = 16*fs; % tan so lay mau
Tm = 1/fm;
tm = -a:Tm:a;
y = exp(tm);
hold on
stem(tm,y);

% nen tin hieu
mu = 87.6;
Amax1 = max(y);
y1 = compand(y, mu, Amax1, 'mu/compressor');
stem(tm,y1);

% luong tu hoa
M = 64; % cac muc luong tu hoa
Amax = max(abs(y1));
delta = Amax/(M-1);
Mq = 0:delta:Amax;

xq = zeros(size(y1));
for k = 1:M
    ind = find(y1 > Mq(k) - delta/2 & y1 <= Mq(k) + delta/2);
    xq(ind) = Mq(k);
end
stairs(tm, xq);
hold off