%***********************************************************BEGIN
function PlotAllDetectedImages

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

%*******************************************

Plot1 = imread('C:\Alpha\Image\DetectedImagePoint.jpg');
figure('Name','DetectedImagePoint');
surf(Plot1)
Plot2 = imread('C:\Alpha\Image\DetectedImagePoint11.jpg');
figure('Name','DetectedImagePoint11');
surf(Plot2)
Plot3 = imread('C:\Alpha\Image\DetectedImagePoint12.jpg'); 
figure('Name','DetectedImagePoint12');
surf(Plot3)
Plot4 = imread('C:\Alpha\Image\DetectedImagePoint13.jpg'); 
figure('Name','DetectedImagePoint13');
surf(Plot4)
Plot5 = imread('C:\Alpha\Image\DetectedImagePoint14.jpg'); 
figure('Name','DetectedImagePoint14');
surf(Plot5)
Plot6 = imread('C:\Alpha\Image\DetectedImagePoint21.jpg'); 
figure('Name','DetectedImagePoint21');
surf(Plot6)
Plot7 = imread('C:\Alpha\Image\DetectedImagePoint22.jpg'); 
figure('Name','DetectedImagePoint22');
surf(Plot7)
Plot8 = imread('C:\Alpha\Image\DetectedImagePoint23.jpg'); 
figure('Name','DetectedImagePoint23');
surf(Plot8)
Plot9 = imread('C:\Alpha\Image\DetectedImagePoint24.jpg'); 
figure('Name','DetectedImagePoint24');
surf(Plot9)

return

%***********************************************************END


