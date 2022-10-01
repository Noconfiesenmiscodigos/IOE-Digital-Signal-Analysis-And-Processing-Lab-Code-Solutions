%Lab 1.5
%Impulse Signal

t = -5:0.01:5;
a=-0.5
y=exp(a*t);
subplot(2,1,1); %subplot(row, column, position)
plot(t,y);
xlabel('Time Domain(t)');
ylabel('Amplitude x(t)');
title('continuous exponential signal');
grid on;
%axis([-4 4 -4 4]); %axix([x_min x_max y_min y_max]);


n = -5:1:5;
y=exp(a*n);
subplot(2,1,2);
stem(n,y);
xlabel('Time Domain[n]');
ylabel('Amplitude u[n]');
title('Discrete exponential signal');
grid on;
%axis([-4 4 -4 4]); 
