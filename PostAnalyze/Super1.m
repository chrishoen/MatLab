function Super1

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed_H.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','H TiltX,Y','NumberTitle','off')
hold on


ta1=[0 inf -12 12];
ta2=[0 inf -12 12];

xz2 = zeros([1 size(x1(:,1))]);

sp1 = subplot(2,1,1);
hold on
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)

sp2 = subplot(2,1,2);
hold on
plot(sp2,x1(:,2),x1(:,4))
axis(sp2,ta2)

linkaxes([sp1,sp2],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

