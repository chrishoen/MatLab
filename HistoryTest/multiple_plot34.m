function multiple_plot34

x = load('C:\Alpha\Data\SignalHistory.csv');

figure('Name','HistoryTest','NumberTitle','off')
hold on
ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);

XA=[0 inf -2 2];

plot(ax1,x(:,2),x(:,3))
axis(ax1,XA)

plot(ax2,x(:,2),x(:,4))
axis(ax2,XA)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

