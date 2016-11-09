%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function image_101

NRows = 1000;

X = checkerboard(NRows/8)>0.5;



theta = 10;

TForm = affine2d([cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1]);
TForm = affine2d([1 0 0; 0 1 0; 0 0 1]);

Y = imwarp(X,TForm);


imshow(Y);

display(TForm)

return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function image_102

NRows = 2000;
NCols = 2000;

X = checkerboard(NRows/8)>0.5;

T = [200.0,200.0];
Alpha = 45;
Y = imrotate(imtranslate(X,T),Alpha);


imshow(Y);


return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function image_103

X = imread('C:\Alpha\Image\Image1.jpg');
imshow(X)

return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


