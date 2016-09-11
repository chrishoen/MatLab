function plot_frequency

MyData = load('C:\Alpha\Data\RandomMotion.csv')
X = MyData(:,3);

Fs = 100;
NFFT = length(X);
W = fft(X,NFFT);
F = ((0:1/NFFT:1-1/NFFT)*Fs);

magnitudeW = abs(W);
phaseW = unwrap(angle(W));

MyFrequencyAnalysisPlot(F,magnitudeW,phaseW,NFFT)

return

function MyFrequencyAnalysisPlot(F,Ymag,Yangle,NFFT,ttlMag,ttlPhase)
% Plot helper function for the FrequencyAnalysisExample

% Copyright 2012 The MathWorks, Inc.

figure
subplot(2,1,1)
plot(F(1:NFFT/2)/1e0,20*log10(Ymag(1:NFFT/2)));
if nargin > 4 && ~isempty(ttlMag)
  tstr = {'Frequency Magnitude',ttlMag};
else
  tstr = {'Frequency Magnitude'};
end
title(tstr)
xlabel('Frequency in Hz')
ylabel('dB')
grid on;
axis tight 
subplot(2,1,2)
plot(F(1:NFFT/2)/1e0,Yangle(1:NFFT/2));
if nargin > 5
  tstr = {'Frequency Phase',ttlPhase};
else  
  tstr = {'Frequency Phase'};
end
title(tstr)
xlabel('Frequency in Hz')
ylabel('Radians')
grid on;
axis tight