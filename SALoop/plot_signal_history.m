function plot_history

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');
set(0,'DefaultFigureWindowStyle','docked')

%*******************************************
x = load('C:\Alpha\Data\SignalHistory1.csv');

MyPlotName = 'SignalHistory';
figure('Name',MyPlotName,'NumberTitle','off'); 
hold on

%*******************************************

plot(x(:,2),x(:,3));
axis([0 inf 0.0 1.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

