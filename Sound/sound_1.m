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
%write_file1;
return

%t = 0:.01:10;
%y = sin(t);  
%plot(t,y)
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

gT = 0:DelT:gNumSec;
gX = 0.99*sin(2*pi*Fc*gT);
%gX = rand(size(gX));
%gX = 1.99*(gX-0.5);
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

wavwrite(gX,'test1.wav')
return
