function sound_1
global gSampleSec;
global gNumSec;
global gX;
global gT;

gSampleSec=8000;
gNumSec=1;
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

gT = 0:(1/gSampleSec):(gNumSec-1/gSampleSec);

Y1=zeros(1,8);
Y2=zeros(1,8000);
Y3=zeros(1,8000);

Y1(1) = 1;
Y1(2) = 1;
Y1(3) = 1;
Y1(4) = 1;
Y1(5) = -1;
Y1(6) = -1;
Y1(7) = -1;
Y1(8) = -1;

for N=1:8000
   Y2(N)=Y1(1+floor((N-1)/1000));
end

Y3=ifft(Y2);

gX = real(Y3);
gX=(0.99)*gX/max(gX);
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function plot1
global gSampleSec;
global gNumSec;
global gX;
global gT;

size(gT)
size(gX)
plot(gT(1:100),gX(1:100))
%plot(gT,gX)
return
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function write_file1
global gX;

wavwrite(gX,'test1.wav')
return
