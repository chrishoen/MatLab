function test1
global gN;
global gT;
global gDelT;
global gRx;
gN=0;
gT=0;
gDelT=1.0;
gRx=zeros(1000);
gT=zeros(1000);

initialize1;
trajectory1;
plot1;
return

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function initialize1
global gN;
global gT;
global gDelT;
global gRx;
global gRx_Start;
global gVx;

for gN=1:1000
    gT(gN) = gN*gDelT;
end

gRx_Start = 0;
gVx = 1.0;
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function trajectory1
global gN;
global gT;
global gDelT;
global gRx;
global gRx_Start;
global gVx;

for gN=1:1000
    gRx(gN) = gRx_Start + gT(gN)*gVx;
end

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function plot1
global gN;
global gT;
global gDelT;
global gRx;

plot(gT,gRx)

