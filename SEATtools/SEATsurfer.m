function SEATsurfer( n,k )
%This function is used to develop surface plots of discrete FPP FSP AFP ASP


%import SEATdata
PositionFile = 'SEAT_Aircraft_LookupTable.csv';
PositionValTable = csvread(PositionFile);

%Generate Data Matrix
YAW = PositionValTable(n:k,5);
PITCH = PositionValTable(n:k,6);
LIFT = PositionValTable(n:k,7);
FPP = PositionValTable(n:k,8);
FSP = PositionValTable(n:k,9);
AFP = PositionValTable(n:k,10);
ASP = PositionValTable(n:k,11);

%regress
b=regress(FPP, [YAW PITCH LIFT])
