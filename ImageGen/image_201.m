%***********************************************************************
%***********************************************************************
%***********************************************************************
function image_201

fprintf('************************************************************************************')

NRows = 1000;
X = checkerboard(NRows/8)>0.5;


%***********************************************************************
R = rotateXYZDinv(0,0,0);
T = [0;0;8];

A = [R; T'];
B = [0;0;0;1];
C = [A,B]
TFormAffine2d = affine3d(C);

%***********************************************************************

XA = [11 12 13;21 22 23;31 32 33;41 42 43];

XA = [-1 -1 4;
      -1  1 4;
       1 -1 4;
       1  1 4];
  
XAX = XA(:, 1);
XAY = XA(:, 2);
XAZ = XA(:, 3);

[YAX,YAY,YAZ] = transformPointsForward(TFormAffine2d,XAX,XAY,XAZ);
YA = [YAX,YAY,YAZ];

XAH = zeros(4,2);
XAH(1,1) = XA(1,1)/XA(1,3);
XAH(1,2) = XA(1,2)/XA(1,3);
XAH(2,1) = XA(2,1)/XA(1,3);
XAH(2,2) = XA(2,2)/XA(1,3);
XAH(3,1) = XA(3,1)/XA(1,3);
XAH(3,2) = XA(3,2)/XA(1,3);
XAH(4,1) = XA(4,1)/XA(1,3);
XAH(4,2) = XA(4,2)/XA(1,3);

YAH = zeros(4,2);
YAH(1,1) = YA(1,1)/YA(1,3);
YAH(1,2) = YA(1,2)/YA(1,3);
YAH(2,1) = YA(2,1)/YA(1,3);
YAH(2,2) = YA(2,2)/YA(1,3);
YAH(3,1) = YA(3,1)/YA(1,3);
YAH(3,2) = YA(3,2)/YA(1,3);
YAH(4,1) = YA(4,1)/YA(1,3);
YAH(4,2) = YA(4,2)/YA(1,3);

display(XA)
display(YA)
display(XAH)
display(YAH)





TFormProj = fitgeotrans(YAH,XAH,'projective')
return

%***********************************************************************
%***********************************************************************
%***********************************************************************
function R=rotateX(t)
R=[1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];

function R=rotateY(t)
R=[cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)];

function R=rotateZ(t)
R=[cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];

function R=rotateXYZD(ax,ay,az)
R = rotateX(deg2rad(ax))*rotateY(deg2rad(ay))*rotateZ(deg2rad(az));

function RT=rotateXYZDinv(ay,ax,az)
R = rotateX(deg2rad(ax))*rotateY(deg2rad(ay))*rotateZ(deg2rad(az));
RT = R';


