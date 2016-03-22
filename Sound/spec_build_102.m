function sound_1
global gSampleSec;
global gNumSec;
global gNSample;
global gSamplePeriod;
global gX;
global gDelT;

gSampleSec=22050;
gSamplePeriod=100*22050;
gNumSec=3600;
gNumSec=100;
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
global gSamplePeriod;
global gX;
global gDelT;

Wn = [0.05 0.10];
Wn = 0.40
Wn = [0.15 0.16];
Wn = [0.50 0.55];
Wn = [0.1 0.2]/2;

b = fir1(100,Wn);
a = 1;

%[b,a] = cheby2(10,30,Wn);

X = rand(gSamplePeriod,1)-0.5;
Y = filter(b,a,X);
Y=Y/(1.5*max(Y));


for N=1:gNSample
% gX(N) = Y(mod(1+N,gSamplePeriod));
 gX(N) = Y(N);
end

return

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function write_file1
global gX;
global gSampleSec;

wavwrite(gX,gSampleSec,'c:\prime\sound\spec102b.wav')
%wavplay(gX,gSampleSec)
return


