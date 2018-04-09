
% Generate vector of x values with resolution 5/50
x = linspace(0,5,50);

% Evaluate GetDistanceBasedOnNormalCurve at x values

% Magic numbers
a = 1.17;
a1 = 9.1;
a2 = 27.5;
a3 = 2.952;
b = 0.4763;
b1 = 5.871;
b2 = 7.642;
b3 = 4.567;
c = -1.146;
c1 = 0.2504;
c2 = 1.593;
c3 = 1.805;
d = -2.82;
    
% Function evaluation
GetDistanceBasedOnNormalCurve = ((a.*exp(b.*x) + c.*exp(d.*x)).*((-atan(1.*x - 3)/pi) + 0.5)...
             + (a1.*exp(-power(((x - b1)/c1), 2.0)) + a2.*exp(-(power(((x - b2)/c2), 2.00)))... 
             + a3.*exp(-power(((x - b3)/c3), 2.00))).*((atan(1.*x - 3)/pi) + 0.5));

% Plot x vs. GetDistanceBasedOnNormalCurve
plot(GetDistanceBasedOnNormalCurve, x);

% Add legend to top left
legend('Location', 'Northwest');

% Fit GenGetDistanceBasedOnNormalCurve to curve
[GenGetDistanceBasedOnNormalCurve, gof] = fit(transpose(GetDistanceBasedOnNormalCurve),...
                                              transpose(x), 'poly5');

% Plot x vs. GenGetDistanceBasedOnNormalCurve
figure(1)
plot(GenGetDistanceBasedOnNormalCurve, transpose(GetDistanceBasedOnNormalCurve), transpose(x));

% Extract the coefficients from model
p = coeffvalues(GenGetDistanceBasedOnNormalCurve);

% Generate function based on magic numbers
%GeneratedFunction = p(1).*x + p(2).*x + p(3).*x + p(4).*x + p(5).*x;
GeneratedFunction = GenGetDistanceBasedOnNormalCurve(x);

% Calculate rms error from GeneratedFunction and
% GetDistanceBasedOnNormalCurveValues
error = abs(GeneratedFunction.^2 - GetDistanceBasedOnNormalCurve(:).^2).^(1/2);

% Evaluate new query points
xFuture = (5:0.1:5.7).';
GeneratedFunctionFuture = GenGetDistanceBasedOnNormalCurve(xFuture);

ci = predint(GenGetDistanceBasedOnNormalCurve, xFuture, 0.95, 'observation');

GenGetDistanceBasedOnNormalCurve



