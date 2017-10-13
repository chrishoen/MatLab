%***********************************************************BEGIN
function search_neighboorhood_101

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%*******************************************
set(0,'DefaultFigureWindowStyle','docked')

X1Select = 1;

if     (X1Select == 1)
   X1 = imread('C:\Alpha\Image\SearchNeighborhood.png');
   MyPlotName = 'SearchNeighborhood';
elseif (X1Select == 2)
   X1 = imread('C:\Alpha\Image\SearchNeighborhoodLow.png');
   MyPlotName = 'SearchNeighborhoodLow';
end
hold on
%*******************************************

figure('Name',MyPlotName,'NumberTitle','off');

%contour3(X1)
surf(X1)
%stem3(X1)
return

%***********************************************************END


