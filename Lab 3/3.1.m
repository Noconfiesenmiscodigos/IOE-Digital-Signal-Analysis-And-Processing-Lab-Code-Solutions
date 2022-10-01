clc;
close all;
clear all;
xn = input('Enter the sequence');
ln = length(xn);
xk = zeros(1,ln);
ixk = zeros(1,ln);

for k = 0:ln-1
    for n=0:ln-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/ln));
    end
end

disp('DFT value of xn');
disp(xk);

t = 0:ln-1;
subplot(221);
stem(t,xn);
ylabel('Amplitude');
xlabel('Time Index');
title('Input Sequence');

magnitude  = abs(xk);
t =0:ln-1;
subplot(222);
stem(t,magnitude);
ylabel('Amplitude');
xlabel('K');
title('Magnitude Response');

phase = angle(xk);
t = 0:ln-1;
subplot(223);
stem(t,phase);
ylabel('Phase');
xlabel('K');
title('Phase Response');

for n = 0:ln-1;
    for k= 0:ln-1;
        ixk(n+1) = ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/ln));
    end
end

disp('IDFT value of xk');
disp(ixk);

ixk = ixk./ln;
t = 0:ln-1;
subplot(224);
stem(t,ixk);
ylabel('Amplitude');
xlabel('Time Index');
title('IDFT sequence');


%Enter the sequence [2 3 4 5 0]
%DFT value of xn
% Columns 1 through 4:

%   14.0000 +       0i   -4.3541 -  2.2654i    2.3541 -  2.7144i    2.3541 +  2.7144i

% Column 5:

%   -4.3541 +  2.2654i
%IDFT value of xk
% Columns 1 through 4:

%   10.0000 -  0.0000i   15.0000 +       0i   20.0000 -  0.0000i   25.0000 +  0.0000i

% Column 5:

%         0 +  0.0000i




