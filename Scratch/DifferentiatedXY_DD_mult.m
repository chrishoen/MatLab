function DifferentiatedXY_DD_mult

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x = load('C:\RESULTS\PlotFiles\Differentiated.csv');

set(0,'defaultFigureWindowStyle','docked')
figure('Name','DifferentiatedXY_DD','NumberTitle','off')
hold on

ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);

XA1=[0 inf -12 12];
XA2=[0 inf -12 12];

plot(ax1,x(:,2),x(:,3))
axis(ax1,XA1)

plot(ax2,x(:,2),x(:,4))
axis(ax2,XA2)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

