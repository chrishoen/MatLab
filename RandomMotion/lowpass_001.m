%*******************************************************************
function lowpass_001
filter_1;
return

%*******************************************************************
function filter_1
disp('BEGIN***********************************')

% Specify filter
Fc1 = 0.10;
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
    'MagnitudeDisplay','Magnitude (dB)', ...
    'FrequencyRange','Specify freq. vector', ...
    'FrequencyVector',linspace(0,4,200),'Fs',100);
      
get(h)
disp('END*************************************')
return

%*******************************************************************
function write_coeffs(b,a)

fid = fopen('matlab_filter_co.txt','wt');

bsize = size(b,2);
asize = size(a,2);

fprintf(fid,'   FilterB1\n');
for N=1:bsize
    fprintf(fid,'      %.40f\n',b(N));
end
fprintf(fid,'\n');

fprintf(fid,'   FilterA1\n');
for N=1:asize
    fprintf(fid,'      %.40f\n',a(N));
end
fprintf(fid,'\n');

fclose(fid);

return
