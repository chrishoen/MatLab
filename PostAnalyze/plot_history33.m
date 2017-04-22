function plot_history33

set(0,'DefaultFigureWindowStyle','docked');
x1 = load('C:\RESULTS\History\SignalHistory1.csv');
x2 = load('C:\RESULTS\History\SignalHistory2.csv');

figure('Name','HistoryTest','NumberTitle','off')
hold on
plot(x1(:,2),x1(:,3));
plot(x2(:,2),x2(:,4));
axis([0 inf -10.0 10.0])


h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

