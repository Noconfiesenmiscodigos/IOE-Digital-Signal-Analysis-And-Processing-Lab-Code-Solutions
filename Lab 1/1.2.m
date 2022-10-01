%Lab 1.2
%Impulse Signal

t = -5:0.01:5;
y=(t==0);
subplot(2,1,1); %subplot(row, column, position)
plot(t,y);
xlabel('Time Domain(t)');
ylabel('Amplitude del(t)');
title('continuous impulse response');
grid on;
axis([-3 3 -1 2]); %axix([x_min x_max y_min y_max]);


n = -5:1:5;
y=(n==0);
subplot(2,1,2);
stem(n,y);
xlabel('Time Domain[n]');
ylabel('Amplitude del[n]');
title('Discrete impulse response');
grid on;
axis([-3 3 -1 2]); 
