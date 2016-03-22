function sound_1
global gSampleSec;
global gNumSec;
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
global gX;
global gT;

DelT=1/8000.0;
Fc=400.0;
Tc=1/Fc;

gT = 0:DelT:gNumSec;
gX = 0.99*(Fc*mod(gT,Tc) - 0.5);
%gX = rand(size(gX));
%gX = 1.99*(gX-0.5);
min(gX)
max(gX)
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function plot1
global gSampleSec;
global gNumSec;
global gX;
global gT;

plot(gT(1:100),gX(1:100))
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function write_file1
global gX;

wavwrite(gX,'test2.wav')
return
