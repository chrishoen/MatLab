function filter_plot_SampleTest

x = load('C:\Alpha\Data\STEP_F1_102.csv');
plot(x(:,2),x(:,3))
axis([-inf inf -6.0 2.0])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

