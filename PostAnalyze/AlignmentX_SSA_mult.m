function AlignmentX_SSA_mult

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed.csv');
x2 = load('C:\RESULTS\PlotFiles\Alignment.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Alignment_SSA','NumberTitle','off')
hold on

ax1 = subplot(3,1,1);
ax2 = subplot(3,1,2);
ax3 = subplot(3,1,3);

XA1=[0 inf -12 12];
XA2=[0 inf -12 12];
XA3=[0 inf 0 1];

plot(ax1,x1(:,2),x1(:,3))
axis(ax1,XA1)

plot(ax2,x1(:,2),x1(:,4))
axis(ax2,XA2)

plot(ax3,x2(:,2),x2(:,3))
axis(ax3,XA3)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

