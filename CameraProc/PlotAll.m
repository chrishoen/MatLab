%***********************************************************BEGIN
function PlotAll

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

%*******************************************

Plot1 = imread('C:\Alpha\Image\CapturedImage.jpg');
figure('Name','CapturedImage');
surf(Plot1)
Plot2 = imread('C:\Alpha\Image\FilteredImage.jpg');
figure('Name','FilteredImage');
surf(Plot2)
Plot3 = imread('C:\Alpha\Image\SearchNeighborhood.jpg'); 
figure('Name','SearchNeighborhood');
surf(Plot3)
Plot4 = imread('C:\Alpha\Image\DetectedImagePoint.jpg'); 
figure('Name','DetectedImagePoint');
surf(Plot4)


return

%***********************************************************END


