function plot_history3

x = load('C:\RESULTS\History\SignalHistory.csv');

figure 
hold on
plot(x(:,2),x(:,4));
axis([0 inf -4.0 4.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

