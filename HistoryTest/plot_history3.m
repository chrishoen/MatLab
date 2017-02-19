function plot_history3

set(0,'DefaultFigureWindowStyle','docked');
x = load('C:\Alpha\Data\SignalHistory.csv');

figure 
hold on
plot(x(:,2),x(:,3));
axis([0 inf -4.0 4.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

