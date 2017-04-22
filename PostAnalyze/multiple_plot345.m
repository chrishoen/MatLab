function multiple_plot345

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x = load('C:\RESULTS\History\SignalHistory1.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','HistoryTest','NumberTitle','off')
hold on

ax1 = subplot(3,1,1);
ax2 = subplot(3,1,2);
ax3 = subplot(3,1,3);

XA=[0 inf -2 2];



plot(ax1,x(:,2),x(:,3))
axis(ax1,XA)

plot(ax2,x(:,2),x(:,4))
axis(ax2,XA)
    
plot(ax3,x(:,2),x(:,5))
axis(ax3,XA)

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

