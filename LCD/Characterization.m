function Characterization()
%This Matlab function will be used to characterize 640x480 displays

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

%Docked windwos format
set(0,'DefaultFigureWindowStyle','docked')

%Intialize Blank Grid
row = 1:640;
col = 1:480;

[R,C]= meshgrid(row,col);
Z= zeros(size(R));

figure(1)
hold on
surf(Z);

%Import Txt files
RowColLog   = textread('C:\Alpha\Log\RowColLog.txt');
MaxValueLog = textread('C:\Alpha\Log\MaxValueLog.txt');

%Get table Dimensions
[RowColLogN,RowColLogM] = size(RowColLog);
[MaxValueLogN,MaxValueLogM] = size(RowColLog);

%Fill in Max value information for Pixel Row Col
ThresholdAbove = MaxValueLog(1);
Threshold      = MaxValueLog(1,2);
AboveCount     = MaxValueLog(1,3);
MaxValue       = MaxValueLog(1,4);

%Fill in indexes for Pixel Row Col
for n = 1:RowColLogN
    plot3(RowColLog(n,1), RowColLog(n,2), 0:1:MaxValueLog(n,4),'.');
    CountAboveLabel = sprintf('---- %u', MaxValueLog(n,3));
    MaxValueLabel = sprintf('---- %u', MaxValueLog(n,4));
    text(RowColLog(n,1),RowColLog(n,2),0.5*MaxValueLog(n,4),CountAboveLabel);
    text(RowColLog(n,1),RowColLog(n,2),MaxValueLog(n,4),MaxValueLabel);
end

for n = 1:RowColLogN
    Thresholdlabel = sprintf('---- %f', MaxValueLog(n,2));
    plot3(RowColLog(n,1), RowColLog(n,2), 0:1:MaxValueLog(n,2),'o');
    text(RowColLog(n,1),RowColLog(n,2),MaxValueLog(n,2),Thresholdlabel);
end

end

