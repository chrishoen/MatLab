%***********************************************************************
%***********************************************************************
%***********************************************************************
function image_105

NRows = 1000;
X = checkerboard(NRows/8)>0.5;


theta = 0;
TForm = projective2d([cosd(theta) -sind(theta) 0.001; sind(theta) cosd(theta) 0.01; 0 0 1]);
display(TForm)


Y = imwarp(X,TForm);

imshow(Y);

return

%***********************************************************************
%***********************************************************************
%***********************************************************************
function image_1022

NRows = 1000;

X = checkerboard(NRows/8)>0.5;



theta = 10;

TForm = affine2d([cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1]);
TForm = affine2d([1 0 0; 0 1 0; 0 0 1]);

Y = imwarp(X,TForm);


imshow(Y);

display(TForm)

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


