%***********************************************************BEGIN
function image_101

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1Select = 4;
ImageDir = 'C:\IMAGE\Image_sony4\'

if     (X1Select == 1)
   X1 = imread(strcat(ImageDir,'CapturedImage.jpg'));
   MyPlotName = 'CapturedImage';
elseif (X1Select == 2)
   X1 = imread(strcat(ImageDir,'FilteredImage.jpg'));
   MyPlotName = 'FilteredImage';
elseif (X1Select == 3)
   X1 = imread(strcat(ImageDir,'SearchNeighborhood.jpg'));
   MyPlotName = 'SearchNeighborhood';
elseif (X1Select == 4)
   X1 = imread(strcat(ImageDir,'DetectedImagePoint.jpg'));
   MyPlotName = 'DetectedImagePoint';
end
hold on
%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

%contour3(X1)
surf(X1)
%stem3(X1)
return

%***********************************************************END


