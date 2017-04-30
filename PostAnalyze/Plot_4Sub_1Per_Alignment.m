function Plot_4Sub_1Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Alignment.csv');
x2 = load('C:\RESULTS\PlotFiles\FirstDerivative_Alignment.csv');
x3 = load('C:\RESULTS\PlotFiles\SecondDerivative_Alignment.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Alignment Deriv','NumberTitle','off')
hold on


ta1=[0 inf 0 1];
ta2=[0 inf -5 5];
ta3=[0 inf -100 100];
ta4=[0 inf -1 1];

xz = zeros([1 size(x2(:,1))]);

sp1 = subplot(4,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)

sp2 = subplot(4,1,2);
hold on
plot(sp2,x2(:,2),xz)
plot(sp2,x2(:,2),x2(:,3))
axis(sp2,ta2)

sp3 = subplot(4,1,3);
hold on
plot(sp3,x3(:,2),xz)
plot(sp3,x3(:,2),x3(:,3))
axis(sp3,ta3)

sp4 = subplot(4,1,4);
hold on
plot(sp4,x1(:,2),xz)
plot(sp4,x1(:,2),(x1(:,3)-0.429765)/0.5)
plot(sp4,x2(:,2),x2(:,3)/5)
plot(sp4,x3(:,2),x3(:,3)/100)
axis(sp4,ta4)

linkaxes([sp1,sp2,sp3,sp4],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

