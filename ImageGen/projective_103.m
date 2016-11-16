%***********************************************************************
%***********************************************************************
%***********************************************************************
function projective_103

fprintf('**************************************************************')

NRows = 1000;
IX = checkerboard(NRows/8)>0.5;


%***********************************************************************

XAH = [ 0  0;
        1  0;
        1  1;
        0  1]*1000;
  
YAH = [ 0.25  0;
        0.75  0;
           1  1;
           0  1]*1000;

XAH = [ -1 -1;
         1 -1;
         1  1;
        -1  1]*1000;
  
YAH = [ -1 -1;
         1 -1;
         1  1;
        -1  1]*1500;
  
YAH = [ -0.5 -0.5;
         0.5 -0.5;
         1.5  0.5;
        -1.5  0.5]*1000;
  

TForm = fitgeotrans(YAH,XAH,'projective');

%TForm = projective2d();

%***********************************************************************
imageSizeX = size(IX);
worldLimitsX = [-500 500];
RefX = imref2d(imageSizeX,worldLimitsX,worldLimitsX);

imageSizeY = imageSizeX;
worldLimitsY = [-1000 1000];
RefY = imref2d(imageSizeY,worldLimitsY,worldLimitsY);

IY = imwarp(IX,RefX,TForm,'OutputView',RefY);


display(size(XAH))
display(size(YAH))

display(XAH)
display(YAH)
display(size(IX),'size(IX)')
display(size(IY),'size(IY)')

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


