function plot_hist_run1_2

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SignalHistory1.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','plot_hist_run2_1','NumberTitle','off')
hold on


ta1=[0 inf  0  1];

xz = zeros([1 size(x1(:,1))]);

sp1 = subplot(3,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)
title('XX')
xlabel('Time (sec)')
ylabel('(units)')



linkaxes([sp1],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');
set(gca,'LooseInset',get(gca,'TightInset'))
return

