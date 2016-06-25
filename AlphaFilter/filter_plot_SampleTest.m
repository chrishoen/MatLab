function filter_plot_SampleTest

x = load('C:\Alpha\Data\SampleTest.csv');
plot(x(:,2),x(:,3))
axis([0 inf -2.0 2.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

