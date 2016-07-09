function filter_plot_SampleTest

x = load('C:\Alpha\Data\STEP_F1_101.csv');
plot(x(:,2),-x(:,3))
axis([-inf inf -2.0 6.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

