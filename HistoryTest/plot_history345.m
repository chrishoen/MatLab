function plot_history345

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

set(0,'DefaultFigureWindowStyle','docked');
x = load('C:\Alpha\Data\SignalHistory.csv');

figure('Name','HistoryTest','NumberTitle','off')
hold on
plot([min(x(:,2)) max(x(:,2))],[0 0],'k-')
plot(x(:,2),x(:,3));
plot(x(:,2),x(:,4));
plot(x(:,2),x(:,5));
axis([0 inf -4.0 4.0])


h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

