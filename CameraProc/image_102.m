%***********************************************************BEGIN
function image_101

X1 = imread('C:\Alpha\Image\SubImage_1.jpg');
%size(X1)
%imshow(X1)
%imhist(X1)

%surf(X1)

Rmin = 5;
Rmax = 16;

[centers, radii] = imfindcircles(X1,[Rmin Rmax])

X2 = imgaussfilt(X1,2);
figure
surf(X2)

Rmin = 5;
Rmax = 16;

[centers, radii] = imfindcircles(X2,[Rmin Rmax])

return
%***********************************************************END


