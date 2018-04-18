function GeneratedFunction = CurveFitter( voltageValues )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x = linspace(0,5,50);

[GenGetDistanceBasedOnNormalCurve, gof] = fit(transpose(voltageValues),...
                                              transpose(x), 'poly5');
p = coeffvalues(GenGetDistanceBasedOnNormalCurve);
GeneratedFunction = GenGetDistanceBasedOnNormalCurve(x);
xFuture = (5:0.1:5.7).';
GeneratedFunctionFuture = GenGetDistanceBasedOnNormalCurve(xFuture);

GenGetDistanceBasedOnNormalCurve


end

