function Plot_3Sub_2Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SignalHistory.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','AlphaThree XVA','NumberTitle','off')
hold on


ta1=[0 inf -4 4];
ta2=[0 inf -4 4];
ta3=[0 inf -4 4];

sp1 = subplot(3,1,1);
hold on
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)

sp2 = subplot(3,1,2);
hold on
plot(sp2,x1(:,2),x1(:,4))
axis(sp2,ta2)

sp3 = subplot(3,1,3);
hold on
plot(sp3,x1(:,2),x1(:,5))
axis(sp3,ta3)

linkaxes([sp1,sp2,sp3],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

