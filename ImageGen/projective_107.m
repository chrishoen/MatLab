%***********************************************************************
%***********************************************************************
%***********************************************************************
function projective_107

fprintf('**************************************************************')

global NumPixels;
NumPixels  = 1000;

NumSquares = 20;
PixelsPerSide = NumPixels/(NumSquares*2);

IX = checkerboard(PixelsPerSide,NumSquares) > 0.5;

TY = [0;0;8];

EulerY1 = [-60,0,0];
[IY1,IYRef] = transformIX(IX,TY,EulerY1);

EulerY2 = [-60,20,0];
[IY2,IYRef] = transformIX(IX,TY,EulerY2);

EulerY3 = [-60,20,20];
[IY3,IYRef] = transformIX(IX,TY,EulerY3);

%imshow(IY3,IYRef)
%return
subplot(1,3,1), imshow(IY1)
subplot(1,3,2), imshow(IY2)
subplot(1,3,3), imshow(IY3)

end
%***********************************************************************
function [IYY,IYYRef] = transformIX(IX,TY,EulerY)

global NumPixels;

R = rotateXYZD(EulerY(1),EulerY(2),EulerY(3));
TX = [0;0;4];
%TY = [0;0;8];

%***********************************************************************

PP1 = [-1 ; -1 ; 0];
PP2 = [ 1 ; -1 ; 0];
PP3 = [-1 ;  1 ; 0];
PP4 = [ 1 ;  1 ; 0];

PX1 = PP1 + TX;
PX2 = PP2 + TX;
PX3 = PP3 + TX;
PX4 = PP4 + TX;

PY1 = R*PP1 + TY;
PY2 = R*PP2 + TY;
PY3 = R*PP3 + TY;
PY4 = R*PP4 + TY;
   
XAH = zeros(4,2);
XAH(1,1) = PX1(1)/PX1(3);
XAH(2,1) = PX2(1)/PX2(3);
XAH(3,1) = PX3(1)/PX3(3);
XAH(4,1) = PX4(1)/PX4(3);
XAH(1,2) = PX1(2)/PX1(3);
XAH(2,2) = PX2(2)/PX2(3);
XAH(3,2) = PX3(2)/PX3(3);
XAH(4,2) = PX4(2)/PX4(3);

YAH = zeros(4,2);
YAH(1,1) = PY1(1)/PY1(3);
YAH(2,1) = PY2(1)/PY2(3);
YAH(3,1) = PY3(1)/PY3(3);
YAH(4,1) = PY4(1)/PY4(3);
YAH(1,2) = PY1(2)/PY1(3);
YAH(2,2) = PY2(2)/PY2(3);
YAH(3,2) = PY3(2)/PY3(3);
YAH(4,2) = PY4(2)/PY4(3);

XAH=XAH*NumPixels;
YAH=YAH*NumPixels;

TForm = fitgeotrans(XAH,YAH,'projective');

%***********************************************************************
imageSizeX = size(IX);
worldLimitsX = [-500 500];
RefX = imref2d(imageSizeX,worldLimitsX,worldLimitsX);

imageSizeY = imageSizeX;
%worldLimitsY = [-1000 1000];
worldLimitsY = [-500 500];
RefY = imref2d(imageSizeY,worldLimitsY,worldLimitsY);

[IY,RefYY] = imwarp(IX,RefX,TForm,'OutputView',RefY);


display(XAH)
display(YAH)
%display(RefX)
%display(RefY)

IYY = IY;
IYYRef = RefYY;
end

%***********************************************************************
%***********************************************************************
%***********************************************************************
function R=rotateX(t)
R=[1 0      0;
   0 cos(t) -sin(t);
   0 sin(t)  cos(t)];
end

function R=rotateY(t)
R=[cos(t)  0 sin(t); 
   0       1 0;
   -sin(t) 0 cos(t)];
end

function R=rotateZ(t)
R=[cos(t) -sin(t) 0;
   sin(t) cos(t)  0;
   0      0       1];
end

function R=rotateXYZD(ax,ay,az)
R = rotateX(deg2rad(ax))*rotateY(deg2rad(ay))*rotateZ(deg2rad(az));
end


