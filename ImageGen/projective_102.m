%***********************************************************************
%***********************************************************************
%***********************************************************************
function projective_102

fprintf('**************************************************************')

NRows = 1000;
IX = checkerboard(NRows/8)>0.5;


%***********************************************************************
R = rotateXYZDinv(30,0,0);
T = [0;0;-2];

A = [R; T'];
B = [0;0;0;1];
C = [A,B]
TFormAffine2d = affine3d(C);

%***********************************************************************

XA = [ -1  -1 4;
        1  -1 4;
        1   1 4;
       -1   1 4];
  
XA = [ 0  0  4;
       1  0 4;
       1  1 4;
       0  1 4];
  
XAX = XA(:, 1);
XAY = XA(:, 2);
XAZ = XA(:, 3);

[YAX,YAY,YAZ] = transformPointsForward(TFormAffine2d,XAX,XAY,XAZ);
YA = [YAX,YAY,YAZ];

XAH = zeros(4,2);
XAH(1,1) = XA(1,1)/XA(1,3);
XAH(1,2) = XA(1,2)/XA(1,3);
XAH(2,1) = XA(2,1)/XA(2,3);
XAH(2,2) = XA(2,2)/XA(2,3);
XAH(3,1) = XA(3,1)/XA(3,3);
XAH(3,2) = XA(3,2)/XA(3,3);
XAH(4,1) = XA(4,1)/XA(4,3);
XAH(4,2) = XA(4,2)/XA(4,3);

YAH = zeros(4,2);
YAH(1,1) = YA(1,1)/YA(1,3);
YAH(1,2) = YA(1,2)/YA(1,3);
YAH(2,1) = YA(2,1)/YA(2,3);
YAH(2,2) = YA(2,2)/YA(2,3);
YAH(3,1) = YA(3,1)/YA(3,3);
YAH(3,2) = YA(3,2)/YA(3,3);
YAH(4,1) = YA(4,1)/YA(4,3);
YAH(4,2) = YA(4,2)/YA(4,3);

XAH = XAH*NRows;
YAH = YAH*NRows;

TForm = fitgeotrans(YAH,XAH,'projective');

%***********************************************************************
Ref = imref2d(size(IX),[1 size(IX,2)],[1 size(IX,1)]);
IY = imwarp(IX,Ref,TForm,'OutputView',Ref);
%IY = imwarp(IX,TForm);


%display(TForm,'TForm');
%display(Ref,'Ref');
display(size(XAH))
display(size(YAH))

display(XAH)
display(YAH)
display(size(IX),'size IX')
display(size(IY),'size IY')

imshow(IY)



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

function RT=rotateXYZDinv(ax,ay,az)
R = rotateX(deg2rad(ax))*rotateY(deg2rad(ay))*rotateZ(deg2rad(az));
RT = R';


