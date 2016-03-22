function test1
global gSampleSec;
global gNumSec;
global gNumSample;
global gX;
global gY;
global gT;

gSampleSec=22050;
gNumSec=20;
gNumSample=gSampleSec*gNumSec;

gT = 0:(1/gSampleSec):(gNumSec-1/gSampleSec);
gX = rand(gNumSample,1)-0.5;

Fs=gSampleSec;

b = fir1(64,0.10);
%b = fir1(100,[0.01 0.25]);
a = 1;
freqz(b,1,512)

gY = filter(b,a,gX);
gY=gY/(1.5*max(gY));


FF = fft(gY,gNumSample/2);

PFF = FF.* conj(FF) / gNumSample;

f = 1000*(0:gNumSample/2-1)/gNumSample;
plot(f(1:gNumSample/4),PFF(1:gNumSample/4))






%plot(gT(1:100),gY(1:100));
wavplay(gY,Fs);

return

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
