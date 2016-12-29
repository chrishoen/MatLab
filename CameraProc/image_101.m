%***********************************************************BEGIN
function image_101

X1 = imread('C:\Alpha\Image\SubImageFiltered.jpg');
%size(X1)
%imshow(X1)
%imhist(X1)

figure
surf(X1)

Rmin = 5;
Rmax = 14;

[centers, radii] = imfindcircles(X1,[Rmin Rmax])


return
%***********************************************************END


