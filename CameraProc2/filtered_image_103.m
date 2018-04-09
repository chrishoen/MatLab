%***********************************************************BEGIN
function filtered_image_103

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1 = imread('C:\Alpha\Image2\FilteredImage.png');
MyPlotName = 'FilteredImage';
hold on
rotate3d on

%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

rowy = 1011+1;
colx = 1256+1;
b = 100;

X2 = X1(rowy-b:rowy+b,colx-b:colx+b);
X3 = X1(rowy-b:rowy+b,colx:colx);


%contour3(X2)
%mesh(X2)
%plot(X2)
%stem3(X3)
stem(X2)
return

%***********************************************************END


