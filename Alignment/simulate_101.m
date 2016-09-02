%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function simulate_101

global NH
global NA
global NB

ThetaP  = deg2rad(  30.0);
PhiP    = deg2rad(  20.0);
ThetaA  = deg2rad(   0.0);
PhiA    = deg2rad(  -2.0);
ThetaB  = deg2rad(   1.0);
PhiB    = deg2rad(   2.0);

Alpha0  = deg2rad(  -2.0);
Beta0   = deg2rad(   2.0);
Theta0  = deg2rad(   1.0);

N0=[0;0;1];
R01=rotateX(ThetaP)*rotateY(PhiP);
R0a3=R01*rotateX(ThetaA)*rotateY(PhiA);
R0b3=R01*rotateX(ThetaB)*rotateY(PhiB);

NH=R01.'*N0;
NA=R0a3.'*N0;
NB=R0b3.'*N0;

V=equationFunction(Alpha0,Beta0,Theta0);
disp(V)
return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function R=rotateX(t)
R=[1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];

function R=rotateY(t)
R=[cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)];

function R=rotateZ(t)
R=[cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function V=equationFunction(Alpha,Beta,Theta)
global NA
global NB

V=rotateY(Alpha)*NA - rotateX(Theta)*rotateY(Beta)*NB;

%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
