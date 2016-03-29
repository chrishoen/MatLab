function pulse_plot_2

x = load('C:\MyLib\Data\PulsePlot11.csv');
plot(x(:,2),x(:,3))
axis([0 inf -2.0 2.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

