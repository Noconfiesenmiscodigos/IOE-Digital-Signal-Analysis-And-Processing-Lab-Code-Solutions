clc;
close all;
clear all;

x = input ('Enter the input sequence x[n] =');
h= input('Enter the impulse sequence h[n]=');
Nx = length(x);
Nh = length(h);

n=0:1:Nx-1;
subplot(221);
stem(n,x);
xlabel('n');
ylabel('x[n]');
title('Input sequence x[n]');

n=0:1:Nh-1;
subplot(222);
stem(n,h);
xlabel('n');
ylabel('h[n]');
title('Impulse Sequence h[n]');

N= max(Nx,Nh);
yc=cconv(x,h,N);
y=conv(x,h);
disp('CIrcular COnvolution of x[n] & h[n]');
disp(yc);
disp('linear COnvolution of x[n] & h[n]');
disp(y);

n =0:1:Nx+Nh-2;
subplot(224);
stem(n,y);
stem(n,y);
xlabel('n');
ylabel('y[n]');
title('Linear COnvolution of x[n] & h[n]');

%Enter the input sequence x[n] = [2 3 5 6]
%Enter the impulse sequence h[n]= [9 8 7 5]
%CIrcular COnvolution of x[n] & h[n]
%   116   110   113   125
%linear COnvolution of x[n] & h[n]
%    18    43    83   125    98    67    30
%>>



