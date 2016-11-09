%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function image_101

NRows = 2000;
NCols = 2000;

X = checkerboard(NRows/8)>0.5;


TForm = affine2d([1 0 0; .5 1 0; 0 0 1]);
Alpha = 45;
Y = imwarp(X,TForm);


imshow(Y);


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


