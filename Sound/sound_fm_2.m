function sound_1
global gSampleSec;
global gNumSec;
global gNSample;
global gX;
global gT;

gSampleSec=8000;
gNumSec=4;
gNSample=gSampleSec*gNumSec;
gX=zeros(1,gNSample);
gT=zeros(1,gNSample);

build1;
plot1;
%write_file1;
play_sound1;
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
Fc=900.0;
Fm=500.0;
delF=400;

Wc=2*pi*Fc;
Wm=2*pi*Fm;
delW=2*pi*delF;
m1=delW/Wm;

gT = 0:DelT:gNumSec;

for N=1:gNSample
   T=gT(N);
   gX(N) = 0.99*cos(Wc*T + m1*cos(Wm*T));
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
%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function play_sound1
global gX;

hplayer = audioplayer(gX, 8000);
playblocking(hplayer);
display(hplayer)

return
