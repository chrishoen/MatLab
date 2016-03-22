function filter_some
filter_1;
return

function filter_1
disp('BEGIN***********************************')

d = fdesign.bandpass('N,F3dB1,F3dB2',10,1e3,1.2e3,1e4);
designmethods(d)
Hd = design(d,'butter');
[b,a] = tf(Hd)
write_coeffs(b,a)

h = fvtool(Hd);               % Plot magnitude response
set(h,'Analysis','freq')      % Display frequency response 
disp('END*************************************')
return

function write_coeffs(b,a)

fid = fopen('filter_coeffs.txt','wt');

bsize = size(b,2);
asize = size(a,2);

fprintf(fid,'B array %d\n', bsize);
for N=1:bsize
    fprintf(fid,'%.20f\n',b(N));
end

fprintf(fid,'A array %d\n', asize);
for N=1:asize
    fprintf(fid,'%.20f\n',a(N));
end

fclose(fid);

return
