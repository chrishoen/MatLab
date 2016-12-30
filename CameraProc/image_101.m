%***********************************************************BEGIN
function image_101

X1 = imread('C:\Alpha\Image\SubImage_1.jpg');
%size(X1)
%imshow(X1)
%imhist(X1)

fig1 = figure;
surf(X1)
%print(fig1,'C:\Alpha\Image\SubImage_1','-dpng')

Rmin = 5;
Rmax = 14;

[centers, radii] = imfindcircles(X1,[Rmin Rmax])


return
%***********************************************************END


