function matlab_plot_345_more

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SignalHistory.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Plot_234_more','NumberTitle','off')
hold on


ta1=[0 inf -2 2];
ta2=[0 inf -2 2];
ta3=[0 inf -2 2];
ta4=[0 inf -2 2];

xz = zeros([1 size(x1(:,1))]);

sp1 = subplot(4,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)
title('X Input')
xlabel('Time (sec)')
ylabel('(units)')

sp2 = subplot(4,1,2);
hold on
plot(sp2,x1(:,2),xz)
plot(sp2,x1(:,2),x1(:,4))
axis(sp2,ta2)
title('XX Estimate')
xlabel('Time (sec)')
ylabel('(units)')

sp3 = subplot(4,1,3);
hold on
plot(sp3,x1(:,2),xz)
plot(sp3,x1(:,2),x1(:,5))
axis(sp3,ta3)
title('XV Estimate')
xlabel('Time (sec)')
ylabel('(units/sec)')

sp4 = subplot(4,1,4);
hold on
plot(sp4,x1(:,2),xz)
plot(sp4,x1(:,2),x1(:,3))
plot(sp4,x1(:,2),x1(:,4))
axis(sp4,ta4)
title('XXV Estimate')
xlabel('Time (sec)')
ylabel('(units/sec)')

linkaxes([sp1,sp2,sp3,sp4],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');
set(gca,'LooseInset',get(gca,'TightInset'))
return

