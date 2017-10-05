%***********************************************************BEGIN
function pulse_plot

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

set(0,'DefaultFigureWindowStyle','docked')

selection = 'Display1';

%*******************************************

%[A0,A1,A2,A3,A4,A5] = textread('C:\Alpha\Log\CoefficientsLog.txt','%f %f %f %f %f %f');
CenterVec  =textread('C:\Alpha\Log\PointCenterLog.txt', '%f');
CenterX= CenterVec(1);
CenterY= CenterVec(2);
MaxValue= CenterVec(3);
%*******************************************

%Initialize grid and function
x= 0:1:701;
[X,Y]= meshgrid(x);
%Z= A0.*X.^2+A1.*Y.^2+A2.*X.*Y+A3.*X+A4.*Y+A5;
SearchNeighborhood = imread('C:\Alpha\Image\SearchNeighborhood.png');

MaxZ= MaxValue + 20;
z = 0:1:MaxZ;
axmin= CenterX+1 - 30;
axmax= CenterX+1 + 30;
aymin= CenterY+1 - 30;
aymax= CenterY+1 + 30;

% Display1 will show the raw data plot from search neighborhood
if( selection == 'Display1')
    MyPlotName = 'SearchNeighborhoodRaw';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    surf(SearchNeighborhood);
    title('SearchNeighborhoodRaw');
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])
    set(gca, 'ZTick',0:25:MaxZ)
    set(gca, 'XTick',axmin:10:axmax)
    set(gca, 'YTick',aymin:10:aymax)
    %set view orthogonal to z-axis
    az = 90;
    el = 0;
    view(az, el);
    

   
end

% Display1 will show the polynomial determined from search neighborhood
% data
if( selection == 'Display2')
    MyPlotName = 'DeterminedPolynomial';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    surf(Z);
    title('DeterminedPolynomial');
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])
    set(gca, 'ZTick',0:25:MaxZ)
    set(gca, 'XTick',axmin:10:axmax)
    set(gca, 'YTick',aymin:10:aymax)
    %set view orthogonal to z-axis
    az = 90;
    el = 0;
    view(az, el);


end

% Display1 will show an overlay of the polynomial on the raw data
if( selection == 'Display3')
    MyPlotName = 'FittedPolynomial';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    surf(SearchNeighborhood);
    surf(Z);
    title('FittedPolynomial')
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])
    set(gca, 'ZTick',0:25:MaxZ)
    set(gca, 'XTick',axmin:10:axmax)
    set(gca, 'YTick',aymin:10:aymax)
    %set view orthogonal to z-axis
    az = 90;
    el = 0;
    view(az, el);


end

return

%***********************************************************END


