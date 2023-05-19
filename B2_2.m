% sau khi thuc hien lay mau se tien hanh luong tu hoa
a = 5;
T = 2*a; % tin hieu tu -a den a nen chu ky la 2a
f = 1/T; % tan so tin hieu
% ve tin hieu ban dau
t = -a:f:a;
%plot(t,exp(t),'r','linewidth',1.5);

% lay mau
fs = 2*f; % tan so nyquist
fm = 16*fs; % tan so lay mau
Tm = 1/fm;
tm = -a:Tm:a;
y = exp(tm);
hold on
%stem(tm,y);

% luong tu hoa
M = 64; % cac muc luong tu hoa
Amax = max(abs(y));
delta = Amax/(M-1);
Mq = 0:delta:Amax;

xq = zeros(size(y));
for k = 1:M
    ind = find(y > Mq(k) - delta/2 & y <= Mq(k) + delta/2);
    xq(ind) = Mq(k);
end
stairs(tm, xq);
hold off