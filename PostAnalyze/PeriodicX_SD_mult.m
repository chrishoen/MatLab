function PeriodicX_SD_mult

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed.csv');
x2 = load('C:\RESULTS\PlotFiles\Differentiated.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','PeriodicX_SD','NumberTitle','off')
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

