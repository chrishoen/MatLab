%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function rotation_101

PsiP    = deg2rad(  30.0);
ThetaP  = deg2rad(  0.0);
PhiP    = deg2rad(  0.0);

N0=[0;0;1];


R01 = rotateYXZ(PsiP,ThetaP,PhiP);
disp(R01)
R01 = rotateYXZT22(PsiP,ThetaP,PhiP);
disp(R01)

return

%NH=R01.'*N0;
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function R=rotateX(t)
R=[1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];

function R=rotateY(t)
R=[cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)];

function R=rotateZ(t)
R=[cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];

function R=rotateYXZ(ay,ax,az)
R = rotateY(ay)*rotateX(ax)*rotateZ(az);

function RT=rotateYXZT22(ay,ax,az)
R = rotateY(ay)*rotateX(ax)*rotateZ(az);
RT = R';
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


