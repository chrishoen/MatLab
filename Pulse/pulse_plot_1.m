function pulse_plot_1

x = load('C:\MyLib\Data\DetectedPdw41.csv');
stem(x(:,2),x(:,3))
axis([0 inf -2.0 2.0])

h=zoom;
set(h,'Motion','horizontal','Enable','on');

h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

