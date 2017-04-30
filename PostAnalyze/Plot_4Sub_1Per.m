function Plot_4Sub_1Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed_H.csv');
x2 = load('C:\RESULTS\PlotFiles\FirstDerivative_H.csv');
x3 = load('C:\RESULTS\PlotFiles\SecondDerivative_H.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Derivatives','NumberTitle','off')
hold on


ta1=[0 inf -10 10];
ta2=[0 inf -20 20];
ta3=[0 inf -300 300];

xz = zeros([1 size(x2(:,1))]);

sp1 = subplot(4,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,4))
axis(sp1,ta1)

sp2 = subplot(4,1,2);
hold on
plot(sp2,x2(:,2),xz)
plot(sp2,x2(:,2),x2(:,4))
axis(sp2,ta2)

sp3 = subplot(4,1,3);
hold on
plot(sp3,x3(:,2),xz)
plot(sp3,x3(:,2),x3(:,4))
axis(sp3,ta3)

sp4 = subplot(4,1,4);
hold on
plot(sp4,x1(:,2),xz)
plot(sp4,x1(:,2),x1(:,4))
plot(sp4,x2(:,2),x2(:,4)/2)
plot(sp4,x3(:,2),x3(:,4)/30)
axis(sp4,ta1)

linkaxes([sp1,sp2,sp3,sp4],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

