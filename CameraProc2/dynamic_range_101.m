%***********************************************************BEGIN
function dynamic_range_101

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1Select = 4;

if     (X1Select == 3)
   X1 = imread('C:\Alpha\Image\DynamicRangeLow.png');
   MyPlotName = 'DynamicRangeLow';
elseif (X1Select == 4)
   X1 = imread('C:\Alpha\Image\DynamicRangeHigh.png');
   MyPlotName = 'DynamicRangeHigh';
end
hold on
%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

%contour3(X1)
surf(X1)
%stem3(X1)
return

%***********************************************************END


