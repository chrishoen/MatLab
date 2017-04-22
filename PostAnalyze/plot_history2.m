function plot_history3

set(0,'DefaultFigureWindowStyle','docked');
x = load('C:\RESULTS\History\SignalHistory1.csv');

figure 
hold on
plot(x(:,1),x(:,2));
axis([0 inf 0 inf])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

