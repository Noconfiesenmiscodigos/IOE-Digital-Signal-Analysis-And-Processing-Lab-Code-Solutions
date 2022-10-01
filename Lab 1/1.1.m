%Lab 1.1
%Impulse Signal

t = -5:0.01:5;
y=(t==0);
plot(t,y);
xlabel('Time Domain(t)');
ylabel('Amplitude del(t)');
title('continuous impulse response');
grid on;
