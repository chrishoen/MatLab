function plot_signal

x = load('C:\Alpha\Data\SignalHistory.csv');
plot(x(:,2),x(:,3))
axis([0 inf -10.0 10.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

