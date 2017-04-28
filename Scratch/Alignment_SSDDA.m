function Alignment_SSDDA

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed.csv');
x2 = load('C:\RESULTS\PlotFiles\differentiated.csv');
x3 = load('C:\RESULTS\PlotFiles\alignment.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Alignment_SSDDA','NumberTitle','off')
hold on


ta1=[0 inf -12 12];
ta2=[0 inf -15 15];
ta3=[0 inf 0 1];

sp1 = subplot(3,1,1);
hold on
plot(sp1,x1(:,2),x1(:,3))
plot(sp1,x1(:,2),x1(:,4))
axis(sp1,ta1)

sp2 = subplot(3,1,2);
hold on
plot(sp2,x2(:,2),x2(:,3))
plot(sp2,x2(:,2),x2(:,4))
axis(sp2,ta2)

sp3 = subplot(3,1,3);
hold on
plot(sp3,x3(:,2),x3(:,3))
axis(sp3,ta3)


h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

