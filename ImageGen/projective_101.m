%***********************************************************************
%***********************************************************************
%***********************************************************************
function projective_101

fprintf('**************************************************************')

NRows = 1000;
IX = checkerboard(NRows/8)>0.5;


%***********************************************************************

XAH = [ 0  0;
        1  0;
        1  1;
        0  1]*NRows;
  
YAH = [ 0.25  0;
        0.75  0;
           1  1;
           0  1]*NRows;

TForm = fitgeotrans(YAH,XAH,'projective')

%***********************************************************************
Ref = imref2d(size(IX),[1 size(IX,2)],[1 size(IX,1)]);
IY = imwarp(IX,Ref,TForm,'OutputView',Ref);


display(size(XAH))
display(size(YAH))

display(XAH)
display(YAH)
display(size(IX))
display(size(IY))

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

function RT=rotateXYZDinv(ay,ax,az)
R = rotateX(deg2rad(ax))*rotateY(deg2rad(ay))*rotateZ(deg2rad(az));
RT = R';


