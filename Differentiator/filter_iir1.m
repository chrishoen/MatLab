function filter_some
filter_3;
return

function filter_1
disp('BEGIN***********************************')
n = 20; 
Wn = [0.5 0.55];
Wn = 0.5;
ftype = 'low';

[z,p,k] = butter(n,Wn,ftype);
[sos,g] = zp2sos(z,p,k);      % Convert to SOS form
Hd = dfilt.df2tsos(sos,g);   % Create a dfilt object
h = fvtool(Hd);              % Plot magnitude response
set(h,'Analysis','freq')      % Display frequency response 
disp('END*************************************')
return

function filter_2
disp('BEGIN***********************************')
n = 20; 
Wn = [0.5 0.55];
Wn = 0.5;
ftype = 'low';

[z,p,k] = ellip(n,3,50,Wn,ftype);
[sos,g] = zp2sos(z,p,k);      % Convert to SOS form
Hd = dfilt.df2tsos(sos,g);   % Create a dfilt object
h = fvtool(Hd);              % Plot magnitude response
set(h,'Analysis','freq')      % Display frequency response 
disp('END*************************************')

function filter_3
disp('BEGIN***********************************')
n = 10; 
Wn = 0.5;
Wn = [0.5 0.51];
ftype = 'bandpass';

[z,p,k] = cheby2(n,30,Wn);
[sos,g] = zp2sos(z,p,k);      % Convert to SOS form
Hd = dfilt.df2tsos(sos,g);   % Create a dfilt object
h = fvtool(Hd);              % Plot magnitude response
set(h,'Analysis','freq')      % Display frequency response 
disp('END*************************************')
return

function filter_4
disp('BEGIN***********************************')
n = 200; 
Wn = 0.5;
Wn = [0.5 0.51];

b = fir1(n,Wn);
freqz(b,1,512);
disp('END*************************************')
return
