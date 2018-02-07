%***********************************************************BEGIN
function filtered_image_103

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1 = imread('C:\Alpha\Image\FilteredImage.png');
MyPlotName = 'FilteredImage';
hold on
rotate3d on

%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

rowy = 1016;
colx = 1216;
b = 100;

X2 = X1(rowy-b:rowy+b,colx-b:colx+b);
X3 = X1(rowy-b:rowy+b,colx:colx);


%contour3(X1)
%mesh(X2)
plot(X3)
%stem3(X1)
return

%***********************************************************END


