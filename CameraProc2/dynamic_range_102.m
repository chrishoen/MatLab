%***********************************************************BEGIN
function dynamic_range_102

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1Select = 4;

if     (X1Select == 3)
   X1 = imread('C:\Alpha\Image\DynamicRangeLow.png');
   MyPlotName = 'DynamicRangeLow Row';
elseif (X1Select == 4)
   X1 = imread('C:\Alpha\Image\DynamicRangeHigh.png');
   MyPlotName = 'DynamicRangeHigh Row';
end
hold on
%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

row = 1024;

R1 = X1(row,:);


%contour3(X1)
plot(R1)
%stem3(X1)
return

%***********************************************************END


