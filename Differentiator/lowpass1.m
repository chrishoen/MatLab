function lowpass_1
disp('BEGIN***********************************')
b = fir1(100,0.10);
fid = fopen('c:\sound\lowpass1.txt','wt');

for N=1:100
    fprintf(fid,'%.20f\n',b(N));
end

fclose(fid);

disp('END*************************************')
return
