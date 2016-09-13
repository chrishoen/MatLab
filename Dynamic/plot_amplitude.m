function plot_amplitude

x = load('C:\Alpha\Data\Dynamic.csv');
plot(x(:,2),x(:,3))
axis([0 inf -10.0 10.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

