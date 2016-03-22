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
Fc=400.0;
Fm=2.0;

gT = 0:DelT:gNumSec;

for N=1:gNSample
   gX(N) = 0.99*sin(2*pi*Fc*gT(N))*sin(2*pi*Fm*gT(N));
end

gX=gX/max(gX);
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function plot1
global gX;
global gT;

plot(gT(1:100),gX(1:100))
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function write_file1
global gX;

wavwrite(gX,'test1.wav')
return
