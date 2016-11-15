%***********************************************************************
%***********************************************************************
%***********************************************************************
function image_201

NRows = 1000;
X = checkerboard(NRows/8)>0.5;


%***********************************************************************
R = rotateXYZDinv(0,0,45);
T = [1,2,3];

A = [R; T]
B = [0;0;0;1]
C = [A,B]
TForm = affine3d(C);

%***********************************************************************

XA = [11 12 13;21 22 23;31 32 33;41 42 43]
XAX = XA(:, 1);
XAY = XA(:, 2);
XAZ = XA(:, 3);



[YAX,YAY,YAZ] = transformPointsForward(TForm,XAX,XAY,XAZ);


display(YAX)
display(YAY)
display(YAZ)
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


