function Plot_2Sub_1Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\APeriodic_H.csv');
x2 = load('C:\RESULTS\PlotFiles\Periodic_H.csv');
x3 = load('C:\RESULTS\PlotFiles\Smoothed_H.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','APeriodic A','NumberTitle','off')
hold on


ta1=[0 inf -12 12];
ta2=[0 inf -12 12];

xz2 = zeros([1 size(x2(:,1))]);

sp1 = subplot(2,1,1);
hold on
plot(sp1,x1(:,2),x1(:,3))
plot(sp1,x2(:,2),x2(:,3))
plot(sp1,x3(:,2),x3(:,3))
axis(sp1,ta1)

sp2 = subplot(2,1,2);
hold on
stem(sp2,x1(:,2),x1(:,3))
stem(sp2,x2(:,2),x2(:,3))
stem(sp2,x3(:,2),x3(:,3))
axis(sp2,ta2)

linkaxes([sp1,sp2],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

