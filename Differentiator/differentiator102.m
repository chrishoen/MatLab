function main_1

DT=1;
N=100;
T = 0:DT:N*DT;

X = mystep(T-50);
plot(T,X)
axis([0  N*DT  -2  2])

%x = 0:T:N*T;
%y = sin(2*pi*x);
%plot(x,y);

return
end

function y=mystep(n)
y=n>=0;
end

