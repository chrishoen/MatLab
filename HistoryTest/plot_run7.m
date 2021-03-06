function plot_run7

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SignalHistory.csv');
x2 = load('C:\Alpha\Data\SignalHistory2.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Run7','NumberTitle','off')
hold on

ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);

XA=[0 inf -2 2];

plot(ax1,x1(:,2),x1(:,3))
axis(ax1,XA)

plot(ax2,x2(:,2),x2(:,3))
axis(ax2,XA)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

