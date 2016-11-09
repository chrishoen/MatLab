%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function checkerboard_101

squareSize = 10;
I = double(checkerboard(squareSize) > 0.5);
X = generateCheckerboardPoints([8 8], squareSize);
    
display(size(X))

Rows = size(X,1);
Y = cat(2,X,zeros(Rows,1))
size(Y)



return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

