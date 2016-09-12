%*******************************************************************
function lowpass_001
filter_1;
return

%*******************************************************************
function filter_1
disp('BEGIN***********************************')

% Specify filter
Fc1 = 1.00;
d = fdesign.lowpass('N,F3db',4,Fc1,100);
normalizefreq(d,false,100);

% Calculate filter
Hd = design(d,...
    'IIR',...
    'butter')

% Get transfer function coefficients
[b,a] = tf(Hd)

% Write transfer function coefficients
write_coeffs(b,a)

% Plot 
h = fvtool(Hd,...
    'Analysis','freq', ...
    'MagnitudeDisplay','Magnitude', ...
    'FrequencyRange','Specify freq. vector', ...
    'FrequencyVector',linspace(0,4,200),'Fs',100);
      
get(h)
disp('END*************************************')
return
%*******************************************************************
function filter_2
disp('BEGIN***********************************')

% Filter parameters
n = 2;
fsby2=4096/2;
W1=3.95/fsby2;
W2=4.05/fsby2;

Wn = [W1 W2];

% Calculate filter
[z,p,k] = butter(n,Wn,'bandpass');
% Convert to SOS form
[sos,g] = zp2sos(z,p,k);
% Create a filter object
Hd = dfilt.df2tsos(sos,g);

% Get transfer function coefficients
[b,a] = tf(Hd)

% Write transfer function coefficients
write_coeffs(b,a)

% Plot 
h = fvtool(Hd,...
    'Analysis','freq', ...
    'MagnitudeDisplay','Magnitude', ...
    'FrequencyRange','Specify freq. vector', ...
    'FrequencyVector',linspace(2,6,8192),'Fs',4096);
%   'FrequencyVector',linspace(0,10,8192),'Fs',4096);
      
get(h)

disp('END*************************************')
return

%*******************************************************************
function write_coeffs(b,a)

fid = fopen('filter_coeffs.txt','wt');

bsize = size(b,2);
asize = size(a,2);

fprintf(fid,'B array %d\n', bsize);
for N=1:bsize
    fprintf(fid,'%.40f\n',b(N));
end

fprintf(fid,'A array %d\n', asize);
for N=1:asize
    fprintf(fid,'%.40f\n',a(N));
end

fclose(fid);

return
