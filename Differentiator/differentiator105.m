function main_1
'Filter Design ******************'
d = fdesign.differentiator(5);
designmethods(d)
Hd = design(d,'firls')

'Filter Coefficients ************'
coeffs(Hd)
save1(Hd.Numerator);

DT=1;
N=100;
T = 0:DT:N*DT;

X = mystep(T-50);
Y = filter(Hd,X);
plot(T,X)
hold all
plot(T,Y)
axis([0  N*DT  -2  2])

return
end

function y=mystep(n)
y=n>=0;
end

%------------------------------------------------------------
%------------------------------------------------------------
%------------------------------------------------------------
function save1(C)
'save1'

fid = fopen('myfile.txt','wt');

fprintf(fid,'%16.12f\n',C);
fclose(fid);
end
