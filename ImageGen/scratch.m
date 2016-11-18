%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function scratch

A = deg2rad(  30.0);

X=[0;1;0];

R = rotateZ(A);

Y = R*X;

disp('X'), disp(X)
disp('Y'), disp(Y)


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


