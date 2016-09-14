function plot_amplitude_c3456

x = load('C:\Alpha\Data\Dynamic.csv');

figure
ax1 = subplot(4,1,1); % top subplot
plot(ax1,x(:,2),x(:,3))
axis(ax1,[0 inf -10.0 10.0])
title('ThetaP')
xlabel('Time sec')
ylabel('Deg')
grid on;
%axis tight 

ax2 = subplot(4,1,2); % bottom subplot
plot(ax2,x(:,2),x(:,4))
axis(ax2,[0 inf -10.0 10.0])
title('PhiP')
xlabel('Time sec')
ylabel('Deg')
grid on;
%axis tight 

ax3 = subplot(4,1,3); % bottom subplot
plot(ax3,x(:,2),x(:,5))
axis(ax3,[0 inf -1.0 1.0])
title('Normal NA3x')
xlabel('Time sec')
ylabel('Unity')
grid on;
%axis tight 

ax4 = subplot(4,1,4); % bottom subplot
plot(ax4,x(:,2),x(:,6))
axis(ax4,[0 inf -1.0 1.0])
title('Normal NA3y')
xlabel('Time sec')
ylabel('Unity')
grid on;
%axis tight 

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

