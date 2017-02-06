function function_plot_1
x = [-5:0.01:5];
y = myfunction(x);

figure 
hold on
plot([min(x) max(x)],[0 0],'k-')
plot([0 0],[-4 10],'k-')
plot(x,y);
axis([-inf inf -4.0 10.0])

return

function y = myfunction(x)

y = (x-2).^2 +1;

return





