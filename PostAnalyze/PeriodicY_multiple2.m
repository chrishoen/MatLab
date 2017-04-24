function PeriodicY_multiple2

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\History\Periodic.csv');
x2 = load('C:\RESULTS\History\Smoothed.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Periodic,SmoothedY','NumberTitle','off')
hold on

ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);

XA1=[0 inf -12 12];
XA2=[0 inf -12 12];

plot(ax1,x1(:,2),x1(:,4))
axis(ax1,XA1)

plot(ax2,x2(:,2),x2(:,4))
axis(ax2,XA2)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

