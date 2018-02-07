function SEATPolyFit(n,k,d)
% This function will be used to create a polynomial curve
% fit for SEAT data from the look up table, n and k are the starting and
% ending positions of the data range

%set docked windows
set(0,'DefaultFigureWindowStyle','docked')

%import SEAT data

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

%Calculate delta YAW, Calculate delta Pitch, Calculate delta Lift

for i = n:k
    DeltaVecYAW(i)= abs(YAW(i+1)-YAW(i));
    DeltaVecPITCH(i)= abs(PITCH(i+1)-PITCH(i));
    DeltaVecLIFT(i)= abs(LIFT(i+1)-LIFT(i));
end
%plot YAW v. FPP, FSP, AFP, ASP
figure(1)
subplot(2,2,1); plot(YAW(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(YAW(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(YAW(n:k),AFP(n:k)); title('AFP');
subplot(2,2,4); plot(YAW(n:k),ASP(n:k)); title('ASP');

%plot PITCH v. FPP, FSP, AFP, ASP
figure(2)
subplot(2,2,1); plot(PITCH(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(PITCH(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(PITCH(n:k),AFP(n:k)); title('AFP');
subplot(2,2,4); plot(PITCH(n:k),ASP(n:k)); title('ASP');

%plot LIFT v. FPP, FSP, AFP, ASP
figure(3)
subplot(2,2,1); plot(PITCH(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(PITCH(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(PITCH(n:k),AFP(n:k)); title('AFP');
subplot(2,2,4); plot(PITCH(n:k),ASP(n:k)); title('ASP');

%plot delta YAW v. FPP, FSP, AFP, ASP
figure(4)
subplot(2,2,1); plot(LIFT(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(LIFT(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(LIFT(n:k),AFP(n:k)); title('AFP');
subplot(2,2,4); plot(LIFT(n:k),ASP(n:k)); title('ASP');

%plot delta Pitch v. FPP, FSP, AFP, ASP
figure(5)
subplot(2,2,1); plot(DeltaVecPITCH(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(DeltaVecPITCH(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(DeltaVecPITCH(n:k),AFP(n:k)); title('AFPP');
subplot(2,2,4); plot(DeltaVecPITCH(n:k),ASP(n:k)); title('ASP');

%plot delta Lift v. FPP, FSP, AFP, ASP
figure(6)
subplot(2,2,1); plot(DeltaVecLIFT(n:k),FPP(n:k)); title('FPP');
subplot(2,2,2); plot(DeltaVecLIFT(n:k),FSP(n:k)); title('FSP');
subplot(2,2,3); plot(DeltaVecLIFT(n:k),AFP(n:k)); title('AFP');
subplot(2,2,4); plot(DeltaVecLIFT(n:k),ASP(n:k)); title('ASP');

%Extrapolate delta LIFT via polynomial extrapolation from FPP, FSP, AFP, ASP
p1 = polyfit(DeltaVecLIFT(n:k),transpose(FPP(n:k)),d);
p2 = polyfit(DeltaVecLIFT(n:k),transpose(FSP(n:k)),d);
p3 = polyfit(DeltaVecLIFT(n:k),transpose(AFP(n:k)),d);
p4 = polyfit(DeltaVecLIFT(n:k),transpose(ASP(n:k)),d);

x1 = linspace(-DeltaVecLIFT(n)*10,DeltaVecLIFT(k)*10,20);
FPPp = polyval(p1, x1);
figure(7)
plot(DeltaVecLIFT(n:k),FPP(n:k),'o'); hold on; title('FPP'); plot(x1,FPPp); hold off; title('FPPp');

FSPp = polyval(p2, x1);
figure(8)
plot(DeltaVecLIFT(n:k),FSP(n:k),'o'); hold on; title('FSP'); plot(x1,FSPp); hold off; title('FSPp');

AFPp = polyval(p3, x1);
figure(9)
plot(DeltaVecLIFT(n:k),AFP(n:k),'o'); hold on; title('AFP'); plot(x1,AFPp); hold off; title('AFPp');

ASPp = polyval(p4, x1);
figure(10)
plot(DeltaVecLIFT(n:k),ASP(n:k),'o'); hold on; title('ASP'); plot(x1,ASPp); hold off; title('ASPp');

%Extrapolate delta YAW via polynomial extrapolation from FPP, FSP, AFP, ASP
p5 = polyfit(DeltaVecYAW(n:k),transpose(FPP(n:k)),d);
p6 = polyfit(DeltaVecYAW(n:k),transpose(FSP(n:k)),d);
p7 = polyfit(DeltaVecYAW(n:k),transpose(AFP(n:k)),d);
p8 = polyfit(DeltaVecYAW(n:k),transpose(ASP(n:k)),d);

x1 = linspace(-1,1,20);
FPPp = polyval(p5, x1);
figure(11)
plot(DeltaVecYAW(n:k),FPP(n:k),'o'); hold on; title('FPP'); plot(x1,FPPp); hold off; title('FPPp');

FSPp = polyval(p6, x1);
figure(12)
plot(DeltaVecYAW(n:k),FSP(n:k),'o'); hold on; title('FSP'); plot(x1,FSPp); hold off; title('FSPp');

AFPp = polyval(p7, x1);
figure(13)
plot(DeltaVecYAW(n:k),AFP(n:k),'o'); hold on; title('AFP'); plot(x1,AFPp); hold off; title('AFPp');

ASPp = polyval(p8, x1);
figure(14)
plot(DeltaVecYAW(n:k),ASP(n:k),'o'); hold on; title('ASP'); plot(x1,ASPp); hold off; title('ASPp');

%Extrapolate delta PITCH via polynomial extrapolation from FPP, FSP, AFP, ASP
p9 = polyfit(DeltaVecPITCH(n:k),transpose(FPP(n:k)),d);
p10 = polyfit(DeltaVecPITCH(n:k),transpose(FSP(n:k)),d);
p11 = polyfit(DeltaVecPITCH(n:k),transpose(AFP(n:k)),d);
p12 = polyfit(DeltaVecPITCH(n:k),transpose(ASP(n:k)),d);

x1 = linspace(-DeltaVecPITCH(n)*10,DeltaVecPITCH(k)*10,20);
FPPp = polyval(p9, x1);
figure(14)
plot(DeltaVecPITCH(n:k),FPP(n:k),'o'); hold on; title('FPP'); plot(x1,FPPp); hold off; title('FPPp');

FSPp = polyval(p10, x1);
figure(15)
plot(DeltaVecPITCH(n:k),FSP(n:k),'o'); hold on; title('FSP'); plot(x1,FSPp); hold off; title('FSPp');

AFPp = polyval(p11, x1);
figure(16)
plot(DeltaVecPITCH(n:k),AFP(n:k),'o'); hold on; title('AFP'); plot(x1,AFPp); hold off; title('AFPp');

ASPp = polyval(p12, x1);
figure(17)
plot(DeltaVecPITCH(n:k),ASP(n:k),'o'); hold on; title('ASP'); plot(x1,ASPp); hold off; title('ASPp');

%plot extrapolated delta YAW v. FPP, FSP, AFP, ASP

%plot extrapolated delta Pitch v. FPP, FSP, AFP, ASP

%plot extrapolated delta Lift v. FPP, FSP, AFP, ASP

%curve fit extrapolated delta YAW to FPP, FSP, AFP, ASP

%curve fit extrapolated delta Pitch to FPP, FSP, AFP, ASP

%curve fit extrapolated delta Lift to FPP, FSP, AFP, ASP

end

