%***********************************************************BEGIN
function filtered_image_102

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1 = imread('C:\Alpha\Image\FilteredImage.png');
MyPlotName = 'FilteredImage';
hold on
rotate3d on

%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

rowy = 1014+1;
colx = 1263+1;
rowy = 1011+1;
colx = 1256+1;
b = 100;

X2 = X1(rowy-b:rowy+b,colx-b:colx+b);


%contour3(X1)
mesh(X2)
%surf(X2)
%stem3(X1)
return

%***********************************************************END


