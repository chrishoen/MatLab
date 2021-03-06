function main1
disp('BEGIN******************************')
synthesize_fp1('test1.wav',220,1800,[1 .25 .25 1],[.0 .2 .5 .7]);
return

function synthesize_fp1(file,f,d,p,gamma)
% Matlab function synthesize_fp(file,f,d,p,gamma) 
% creates a .wav audio file of a sound where all frequencies, 
% amplitudes(power) and phase may be specified.
%
% file is a string which is the name of the .wav file.
% f is a length n vector of frequencies in Hz
% d is the duration in seconds
% p is a length n vector of amplitudes
% gamma is a length n vector of phase shifts, as a fraction of the 
%  period of the first harmonic f1.
%
% Mark R. Petersen, U. of Colorado Boulder Applied Math Dept, Feb 2004
  
Fs=22050; nbits=8;              % frequency and bit rate of wav file
disp('testpoint 1')
t = linspace(1/Fs, d, d*Fs);    % time
disp('testpoint 2')
y = zeros(1,Fs*d);              % initialize sound data
disp('testpoint 3')
for j=1:length(p);
  y = y + p(j)*cos(2*pi*f*j*(t-gamma(j)/f)); % sythesize waveform
end
disp('testpoint 4')
y = .5*y/max(y);                % normalize.  Coefficent controls volume.
disp('testpoint 5')
wavwrite( y, Fs, nbits, file)
disp('testpoint 6')
disp('END********************************')
