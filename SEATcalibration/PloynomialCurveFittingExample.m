load census
whos cdate pop
plot(cdate, pop, 'o')

%Polynomial fitting
[population2, gof] = fit(cdate, pop, 'poly2');
plot(population2, cdate, pop);

% The third parameter controls the degree of the polynomial to fit
population3 = fit(cdate, pop, 'poly3', 'Normalize', 'on');
population4 = fit(cdate, pop, 'poly4', 'Normalize', 'on');
population5 = fit(cdate, pop, 'poly5', 'Normalize', 'on');
population6 = fit(cdate, pop, 'poly6', 'Normalize', 'on');

%Move the legend to the top left corner
legend('Location', 'Northwest');

%Exponential fitting
populationExp = fit(cdate, pop, 'exp1');

hold on
plot(population3, 'b');
plot(population4, 'g');
plot(population5, 'm');
plot(population6, 'b--');
plot(populationExp, 'r--');

hold off

legend('cdate v pop', 'poly2', 'poly3', 'poly4', 'poly5', 'poly6', 'polyExp', ...
       'Location', 'Northwest')

% Compare residuals
plot(population2, cdate, pop, 'residuals')
plot(populationExp, cdate, pop, 'residuals');

%Examine fit beyond data range to 2050 with 6deg polynomial
plot(cdate, pop, 'o');
xlim([1900, 2050]);
hold on
plot(population6);
hold off

% plot prediction to 2050 with 3deg polynomial
plot(cdate, pop, 'o');
xlim([1900, 2050])
hold on
plot(population3, 'predobs')
hold off

% show the goodness of fit from 2deg polynomial fit
gof

% show the coefficients for 2deg polynomial
population2

% show the coefficients for exponential fit
populationExp

% get confidence intervals on populationExp
ci = confint(populationExp)

cdateFuture = (2000:10:2020);
popFuture = populationExp(cdateFuture)

% compute 95% confidence bounds on prediction
ci = predint(populationExp, cdateFuture, 0.95, 'observation')

% plot the predicted future population with confidence intervals
plot(cdate, pop, 'o');
xlim([1900, 2040])
hold on
plot(populationExp)
h = errorbar(cdateFuture, popFuture, popFuture - ci(:,1), ci(:,2) -popFuture, '.');
hold off
legend('cdate v pop', 'Exp', 'prediction', ...
       'Location', 'Northwest')

 cdate