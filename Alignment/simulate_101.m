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

R01=rotateX(ThetaP)*rotateY(PhiP);
R0a3=R01*rotateX(ThetaA)*rotateY(PhiA);
R0b3=R01*rotateX(ThetaB)*rotateY(PhiB);

N0=[0;0;1];

NH=R01.'*N0;
NA=R0a3.'*N0;
NB=R0b3.'*N0;

runSimulate();
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
function runSimulate(t)
global NH
global NA
global NB

NH
NA
NB

%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
