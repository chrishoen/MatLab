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

xc = 2448/2;
yc = 2048/2;
b = 100;

X2 = X1(yc-b:yc+b,xc-b:xc+b);
X3 = X2(101,:);


%contour3(X1)
%mesh(X2)
plot(X3)
%stem3(X1)
return

%***********************************************************END


