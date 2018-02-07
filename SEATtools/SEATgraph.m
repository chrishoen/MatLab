function SEATgraph(n,k)

%set docked windows
set(0,'DefaultFigureWindowStyle','docked')

%get SEAT csv file
SensorFile = 'SEAT_SensorValues.csv';
SensorValTable = csvread(SensorFile);

PositionFile = 'SEAT_Aircraft_LookupTable.csv';
PositionValTable = csvread(PositionFile);


YAW = PositionValTable(1:312,5);
PITCH = PositionValTable(1:312,6);
LIFT = PositionValTable(1:312,7);
FPP = PositionValTable(1:312,8);
FSP = PositionValTable(1:312,9);
AFP = PositionValTable(1:312,10);
ASP = PositionValTable(1:312,11);


X= cos(PITCH)*transpose(sin(YAW));
Y= sin(PITCH)*transpose(sin(YAW));
Z= cos(PITCH);


% scatter(1:312,YAW)
% hold on;
%plot(1:312, ASP)
% hold on;
% plot(1:312,PITCH)
% hold on;
% plot(1:312,LIFT)
x  = linspace(1,312,312);
xq = linspace(1,312,936);

YAWq = interp1(x, YAW(1:312),xq);
PITCHq = interp1(x, PITCH(1:312),xq);
LIFTq = interp1(x, LIFT(1:312),xq);



FPPq = interp1(x, FPP(1:312),xq, 'pchip');
FSPq = interp1(x, FSP(1:312),xq);
AFPq = interp1(x, AFP(1:312),xq);
ASPq = interp1(x, ASP(1:312),xq);

linvec = 1:936;
figure(1)
plot(linvec(1:5), FPPq(1:5))
figure(2)
plot((1:10),ASP(1:10),xq(1:10),ASPq(1:10),'*');
hold on;

legend('v','vq');
p = polyfit(linvec(1:10), transpose(ASP(1:10)), 5);
ASPp = polyval(p, (1:10));
plot((1:10), ASPp(1:10));
hold on;

figure(3)
plot(linvec(1:10), PITCH(1:10))
hold on;
plot(linvec(1:10), ASP(1:10))

data = [transpose(YAWq), transpose(PITCHq), transpose(LIFTq), transpose(FPPq), transpose(FSPq), transpose(AFPq), transpose(ASPq)];
csvwrite('SEAT_INTERPOLATION.csv', data);

for i =n:k
    DeltaVecYAW(i)= YAW(i)-YAW(i+1);
    DeltaVecPITCH(i)= PITCH(i)-PITCH(i+1);
    DeltaVecLIFT(i)= LIFT(i)-LIFT(i+1);
end

DeltaVecYAW(n:k);

DeltaVecPITCH(n:k);

DeltaVecLIFT(n:k);

figure(4)
plot(n:k,DeltaVecYAW(n:k),n:k,DeltaVecPITCH(n:k),n:k,DeltaVecLIFT(n:k));
legend('DYAW','DPITCH','DLIFT');p

figure(5)
plot(FPP(n:k),DeltaVecYAW(n:k))


FPPq = polyfit(DeltaVecYAW(n:k), transpose(ASP(n:k)), 3)
FSPq = polyfit(DeltaVecYAW(n:k), transpose(FPP(n:k)), 3);
AFPq = polyfit(DeltaVecYAW(n:k), transpose(AFP(n:k)), 3);
ASPq = polyfit(DeltaVecYAW(n:k), transpose(ASP(n:k)), 3);

figure(6)
ASPp = polyval(p, DeltaVecYAW(n:k));
plot((n:k), ASPp(n:k));
e=4;
