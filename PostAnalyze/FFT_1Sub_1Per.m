function FFT_1Sub_1Per

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

x1 = load('C:\RESULTS\PlotFiles\Smoothed_A.csv');

set(0,'DefaultFigureWindowStyle','docked')
figure('Name','FFT_A','NumberTitle','off')
hold on

X = x1(:,3);
Fs = 100.0;
Fc = 5.0;
T = 1/Fs;
L = length(X);
Y = fft(X);

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

F = Fs*(0:(L/2))/L;

MS = (Fs/Fc)/2;
M = 1+(length(P1)-1)/MS;

FP = F(1:M);
PP = P1(1:M);
plot(FP,PP);
size(FP);

title('Amplitude Spectrum')
xlabel('f (Hz)')
ylabel('|P(f)|')

return

