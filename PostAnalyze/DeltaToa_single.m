function DeltaToa_single

set(0,'DefaultFigureWindowStyle','docked');
x = load('C:\RESULTS\History\DeltaToa.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','DeltaToa','NumberTitle','off')

hold on
plot(x(:,2),x(:,3));
axis([0 inf 0 inf])
h=zoom;
set(h,'Motion','horizontal','Enable','on');


return

