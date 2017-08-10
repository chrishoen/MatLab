function matlab_SignalHistory

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
x1 = load('C:\Alpha\Data\SignalHistory.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Run1','NumberTitle','off')
hold on


%*******************************************
ta1=[0 inf -5 5];

%*******************************************
sp1 = subplot(2,1,1);
hold on
plot(sp1,x1(:,2),x1(:,3))

axis(sp1,ta1)
title('SignalHistory')
xlabel('Time (sec)')
ylabel('Tilt (deg)')

%*******************************************
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

