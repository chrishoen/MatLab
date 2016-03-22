function sound_1
global gSampleSec;
global gNumSec;
global gNSample;
global gX;
global gDelT;

gSampleSec=22050;
gNumSec=10;
gNSample=gSampleSec*gNumSec;
gX=zeros(1,gNSample);
gDelT=1/gSampleSec;

disp('BEGIN***********************************')
disp('build1')
build1;
disp('write_file1')
write_file1;
disp('END*************************************')
return

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function build1
global gSampleSec;
global gNumSec;
global gNSample;
global gX;
global gDelT;

Fc=220.0;

Wc=2*pi*Fc;

T = 0;
for N=1:gNSample
   gX(N) = 0.99*cos(Wc*T);
   T=T+gDelT;
end
gX=gX/(1.02*max(gX));
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
global gSampleSec;

wavwrite(gX,'test1.wav')
%wavplay(gX,gSampleSec)
return
