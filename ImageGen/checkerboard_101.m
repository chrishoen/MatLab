%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function checkerboard_101

squareSize = 10;
I = double(checkerboard(squareSize) > 0.5);
worldPoints = generateCheckerboardPoints([8 8], squareSize);
    
imshow(insertMarker(I, worldPoints + squareSize));  
display(size(I))

return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

