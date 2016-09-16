function averages

Duration=100.0;
NumSamples=1000000;
Ts = Duration/NumSamples;
Fp = 0.1;
T = 0:Ts:Duration;

A = degtorad(10.0);
Phase = degtorad(45);
X = A*sin(2.0*pi*Fp*T) + Phase;
Y = sin(X);

EX_X = mean(X);
EX_Y = mean(Y);
SS_Y = sin(EX_X);

fprintf('RESULTS******************************************\n')
fprintf('RESULTS %d\n',NumSamples)
fprintf('RESULTS EX_X   %12.10f\n',EX_X)
fprintf('RESULTS EX_Y   %12.10f\n',EX_Y)
fprintf('RESULTS SS_Y   %12.10f\n',SS_Y)
figure
ax1 = subplot(2,1,1); % top subplot
plot(ax1,T,X)
axis(ax1,[0 inf -inf inf])
title('X')
xlabel('Time sec')
ylabel('Deg')
grid on;
axis tight 

ax2 = subplot(2,1,2); % bottom subplot
plot(ax2,T,Y)
axis(ax2,[0 inf -inf inf])
title('Y')
xlabel('Time sec')
ylabel('Deg')
grid on;
axis tight 

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return;










plot(T,radtodeg(X))
axis([0 inf -inf inf])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

