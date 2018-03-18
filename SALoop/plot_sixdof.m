function Plot_4Sub_1Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\Alpha\Data\SixDof.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','SixDOf','NumberTitle','off')
hold on

tA=[0 inf -1 1];
tX=[0 inf -10 10];

xz = zeros([1 size(x1(:,1))]);

sp1 = subplot(6,1,1);
hold on
plot(sp1,x1(:,2),xz)
plot(sp1,x1(:,2),x1(:,3))
axis(sp1,tA)

sp2 = subplot(6,1,2);
hold on
plot(sp2,x1(:,2),xz)
plot(sp2,x1(:,2),x1(:,4))
axis(sp2,tA)

sp3 = subplot(6,1,3);
hold on
plot(sp3,x1(:,2),xz)
plot(sp3,x1(:,2),x1(:,5))
axis(sp3,tA)

sp4 = subplot(6,1,4);
hold on
plot(sp4,x1(:,2),xz)
plot(sp4,x1(:,2),x1(:,6))
axis(sp4,tX)

sp5 = subplot(6,1,5);
hold on
plot(sp5,x1(:,2),xz)
plot(sp5,x1(:,2),x1(:,7))
axis(sp5,tX)

sp6 = subplot(6,1,6);
hold on
plot(sp6,x1(:,2),xz)
plot(sp6,x1(:,2),x1(:,8))
%axis(sp6,tX)


linkaxes([sp1,sp2,sp3,sp4,sp5,sp6],'x')
h=zoom;
set(h,'Motion','horizontal','Enable','on');

return

