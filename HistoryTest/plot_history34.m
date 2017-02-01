function plot_history34

set(0,'DefaultFigureWindowStyle','docked');
x = load('C:\Alpha\Data\SignalHistory.csv');

figure('Name','HistoryTest','NumberTitle','off')
hold on
plot(x(:,2),x(:,3));
plot(x(:,2),x(:,4));
axis([0 inf -10.0 10.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

e