function filter_plot_3

x = load('C:\MyLib\Data\FilterAlphaTwo.csv');

ax1 = subplot(3,1,1); % top    subplot X
ax2 = subplot(3,1,2); % middle subplot EX
ax3 = subplot(3,1,3); % bottom subplot UX

plot(ax1,x(:,2),x(:,3))
axis(ax1,[0 inf -2.0 2.0])

plot(ax2,x(:,2),x(:,4))
axis(ax2,[0 inf -2.0 2.0])

plot(ax3,x(:,2),x(:,5))
axis(ax3,[0 inf -2.0 2.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

