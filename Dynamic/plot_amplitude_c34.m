function plot_amplitude_c34

x = load('C:\Alpha\Data\Dynamic.csv');

%figure
ax1 = subplot(2,1,1); % top subplot
plot(ax1,x(:,2),x(:,3))
axis(ax1,[0 inf -inf inf])
title('ThetaP')
xlabel('Time sec')
ylabel('Deg')
grid on;
axis tight 

ax2 = subplot(2,1,2); % bottom subplot
plot(ax2,x(:,2),x(:,4))
axis(ax2,[0 inf -10.0 10.0])
title('PhiP')
xlabel('Time sec')
ylabel('Deg')
grid on;
axis tight 

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

plot(ax1,x(:,2),x(:,3))
axis(ax1,[0 inf -10.0 10.0])


