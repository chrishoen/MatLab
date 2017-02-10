%***********************************************************BEGIN
function image_101

set(0,'DefaultFigureWindowStyle','docked');
X1 = imread('C:\Alpha\Image\SubImage3.jpg');
%size(X1)
%imshow(X1)
%imhist(X1)

fig1 = figure;
%contour3(X1)
surf(X1)
%stem3(X1)
%print(fig1,'C:\Alpha\Image\SubImage_1','-dpng')
return
Rmin = 2;
Rmax = 15;

[centers, radii] = imfindcircles(X1,[Rmin Rmax])


return
%***********************************************************END


