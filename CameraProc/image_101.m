%***********************************************************BEGIN
function image_101

I = imread('C:\Alpha\Image\SubImage_1.jpg');
%size(I)
%imshow(I)
%imhist(I)

surf(I)

Rmin = 5;
Rmax = 15;

[centers, radii] = imfindcircles(I,[Rmin Rmax])


return
%***********************************************************END


