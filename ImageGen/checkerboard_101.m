%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function checkerboard_101

NumPixels  = 1000;
NumSquares =20;
PixelsPerSide = NumPixels/(NumSquares*2);

IX = checkerboard(PixelsPerSide,NumSquares) > 0.5;
    
display(size(IX),'size(IX)');

imshow(IX)



return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

