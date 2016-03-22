function main_1

d = fdesign.differentiator(33);
    designmethods(d);
    Hd = design(d,'firls');
%   fvtool(Hd,'MagnitudeDisplay','Zero-phase','FrequencyRange','[-pi, pi)')

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

