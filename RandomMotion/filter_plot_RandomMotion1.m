function filter_plot_RandomMotion1

x = load('C:\Alpha\Data\RandomMotion.csv');
plot(x(:,2),x(:,4))
axis([0 inf -2.0 2.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

