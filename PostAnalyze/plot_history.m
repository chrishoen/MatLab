function plot_history

x = load('C:\RESULTS\History\SignalHistory.csv');
figure 
hold on
plot(x(:,2),x(:,3));
plot(x(:,2),x(:,4));
%axis([1.0 1.2 -10.0 10.0])
axis([0 inf -10.0 10.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

