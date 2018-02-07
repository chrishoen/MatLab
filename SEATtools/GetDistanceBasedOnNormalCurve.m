function [ Distance ] = GetDistanceBasedOnNormalCurve(x)
%Function from RMD
a0 = 1.17;
a1 = 9.1;
a2 = 27.5;
a3 = 2.952;
b0 = 0.4763;
b1 = 5.871;
b2 = 7.642;
b3 = 4.567;
c0 = -1.146;
c1 = 0.2504;
c2 = 1.593;
c3 = 1.805;
d0 = -2.82;
Distance = ((a0.*exp(b0.*x) + c0.*exp(d0.*x)).*((-atan(1.*x - 3)./pi) + 0.5) + (a1.*exp(-((x - b1)./c1).^2.0) + a2.*exp(-((x - b2)./c2).^2.00)) + a3.*exp(-((x - b3)./c3).^2.00)).*((atan(x - 3)/pi) + 0.5);

end

