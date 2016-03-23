function sample_plot_1

x = load('C:\MyLib\Data\SampleTest.csv');
plot(x(:,2),x(:,3))
axis([0 inf -4.0 4.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

