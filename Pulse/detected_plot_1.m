function detected_plot_1

x1 = load('C:\MyLib\Data\PulseSample41.csv');
x2 = load('C:\MyLib\Data\DetectedPdw41.csv');

ax1 = subplot(2,1,1); % top subplot
ax2 = subplot(2,1,2); % bottom subplot

plot(ax1,x1(:,2),x1(:,3))
axis(ax1,[0 inf -2.0 2.0])

stem(ax2,x2(:,2),x2(:,3))
axis(ax2,[0 inf -2.0 2.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

