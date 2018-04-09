function plot_hist_run1_1

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SignalHistory1.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','plot_hist_run1_1','NumberTitle','off')
hold on


ta1=[0 inf  0  1];
ta2=[0 inf -1  1];
ta3=[0 inf -1  1];

xz = zeros([1 size(x1(:,1))]);

sp1 = subplot(3,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,ta1)
title('XX')
xlabel('Time (sec)')
ylabel('(units)')

sp2 = subplot(3,1,2);
hold on
plot(sp2,x1(:,2),xz)
plot(sp2,x1(:,2),x1(:,4))
axis(sp2,ta2)
title('XV')
xlabel('Time (sec)')
ylabel('(units)')

sp3 = subplot(3,1,3);
hold on
plot(sp3,x1(:,2),xz)
plot(sp3,x1(:,2),x1(:,3))
plot(sp3,x1(:,2),x1(:,4))
axis(sp3,ta3)
title('XX,XV')
xlabel('Time (sec)')
ylabel('(units/sec)')

linkaxes([sp1,sp2,sp3],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');
set(gca,'LooseInset',get(gca,'TightInset'))
return

