function filter_some
filter_1;
return

function filter_1
disp('BEGIN***********************************')

d = fdesign.bandpass('N,F3dB1,F3dB2',10,3.95,4.05,4096);
normalizefreq(d,false,4000);

Hd = design(d,'butter')
[b,a] = tf(Hd)

write_coeffs(b,a)

%h = fvtool(Hd);

h = fvtool(Hd,...
    'Analysis','freq', ...
    'MagnitudeDisplay','Magnitude', ...
    'FrequencyRange','Specify freq. vector', ...
    'FrequencyVector',linspace(0,10,8192),'Fs',4096);
      
get(h)
disp('END*************************************')
return

function write_coeffs(b,a)

fid = fopen('filter_coeffs.txt','wt');

bsize = size(b,2);
asize = size(a,2);

fprintf(fid,'B array %d\n', bsize);
for N=1:bsize
    fprintf(fid,'%.30f\n',b(N));
end

fprintf(fid,'A array %d\n', asize);
for N=1:asize
    fprintf(fid,'%.30f\n',a(N));
end

fclose(fid);

return
