%***********************************************************************
%***********************************************************************
%***********************************************************************
function translate_101

fprintf('**************************************************************')

NRows = 1000;
IX = checkerboard(NRows/8)>0.5;


%***********************************************************************

AH = [ 1 0 0;
       0 1 0;
       100 100 1 ] 

TForm = affine2d(AH);

%TForm = projective2d();

%***********************************************************************
imageSizeX = size(IX);
worldLimitsX = [-500 500];
RefX = imref2d(imageSizeX,worldLimitsX,worldLimitsX);

imageSizeY = imageSizeX;
worldLimitsY = [-1000 1000];
RefY = imref2d(imageSizeY,worldLimitsY,worldLimitsY);

[IY,RefYY] = imwarp(IX,RefX,TForm,'OutputView',RefY);

display(size(IX),'size(IX)')
display(size(IY),'size(IY)')
display(RefX)
display(RefY)

imshow(IY,RefYY)
%subplot(1,2,1), imshow(IX)
%subplot(1,2,2), imshow(IY)




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


