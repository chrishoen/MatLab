function plot_run1

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');
set(0,'DefaultFigureWindowStyle','docked')

%*******************************************
x = load('C:\Alpha\Data\SignalHistory.csv');

MyPlotName = 'SignalHistory';
figure('Name',MyPlotName,'NumberTitle','off'); 
hold on

%*******************************************

plot(x(:,2),x(:,3));
axis([0 inf -10.0 10.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

