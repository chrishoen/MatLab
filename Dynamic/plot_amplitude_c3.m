function plot_amplitude_c3

x = load('C:\Alpha\Data\Dynamic.csv');
plot(x(:,2),x(:,3))
axis([0 inf -inf inf])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

