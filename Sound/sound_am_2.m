function sound_1
global gSampleSec;
global gNumSec;
global gNSample;
global gX;
global gT;

gSampleSec=8000;
gNumSec=10;
gNSample=gSampleSec*gNumSec;
gX=zeros(1,gNSample);
gT=zeros(1,gNSample);

build1;
plot1;
write_file1;
return

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function build1
global gSampleSec;
global gNumSec;
global gNSample;
global gX;
global gT;

DelT=1/8000.0;
gT = 0:DelT:gNumSec;

Fm=2.0;
Wc1=2*pi*400.0;
Wc2=2*pi*500.0;
Wc3=2*pi*600.0;
Wc4=2*pi*700.0;
Wc5=2*pi*800.0;
Phi1=2*pi*  0/360;
Phi2=2*pi* 90/360;
Phi3=2*pi*180/360;
Phi4=2*pi*  0/360;
Phi5=2*pi*  0/360;

Phi4
for N=1:gNSample
    T=gT(N);
    X1=sin(Wc1*T + Phi1);
    X2=sin(Wc2*T + Phi2);
    X3=sin(Wc3*T + Phi3);
    X4=sin(Wc4*T + Phi4);
    X5=sin(Wc5*T + Phi5);
    gX(N)=0.5*X4+0.1*X5;
end

gX=0.99*gX/max(gX);
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function plot1
global gX;
global gT;

plot(gT(1:300),gX(1:300))
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function write_file1
global gX;

wavwrite(gX,'test1.wav')
return
