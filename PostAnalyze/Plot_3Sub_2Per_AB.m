function Plot_3Sub_2Per_AB

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1_A = load('C:\RESULTS\PlotFiles\Smoothed_A.csv');
x1_B = load('C:\RESULTS\PlotFiles\Smoothed_B.csv');
x2_A = load('C:\RESULTS\PlotFiles\SecondDerivative_A.csv');
x2_B = load('C:\RESULTS\PlotFiles\SecondDerivative_B.csv');
x3 = load('C:\RESULTS\PlotFiles\Alignment.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','Compare ROI2','NumberTitle','off')
hold on


ta1=[0 inf -12 12];
ta2=[0 inf -400 400];
ta3=[0 inf 0 1];

xz = zeros([1 size(x1_A(:,1))]);

sp1 = subplot(3,1,1);
hold on
plot(sp1,x1_A(:,2),x1_A(:,4))
plot(sp1,x1_B(:,2),x1_B(:,4))
axis(sp1,ta1)

sp2 = subplot(3,1,2);
hold on
plot(sp2,x2_A(:,2),x2_A(:,4))
plot(sp2,x2_B(:,2),x2_B(:,4))
plot(sp2,x3(:,2),x3(:,3)*400)
plot(sp2,x2_A(:,2),xz)
axis(sp2,ta2)

sp3 = subplot(3,1,3);
hold on
plot(sp3,x3(:,2),x3(:,3))
plot(sp3,x2_A(:,2),xz +0.4296)
axis(sp3,ta3)

linkaxes([sp1,sp2,sp3],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

