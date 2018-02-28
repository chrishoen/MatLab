%***********************************************************BEGIN
function Polynomial(selection, coefficients)

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

set(0,'DefaultFigureWindowStyle','docked')


%*******************************************
if(coefficients=="ON")
    [A0,A1,A2,A3,A4,A5] = textread('C:\Alpha\Log\CoefficientsLog.txt','%f %f %f %f %f %f');
    Z= A0.*X.^2+A1.*Y.^2+A2.*X.*Y+A3.*X+A4.*Y+A5;
end

CenterVec  =textread('C:\Alpha\Log\PointCenterLog.txt', '%f');
CenterX= CenterVec(1);
CenterY= CenterVec(2);
MaxValue= CenterVec(3);
%*******************************************

%Initialize grid and function
x= 0:1:701;
[X,Y]= meshgrid(x);
SearchNeighborhood = imread('C:\Alpha\Image\SearchNeighborhood.png');

MaxZ= MaxValue + 20;
MaxZ= 65536;
z = 0.75*MaxZ:10:MaxZ;
axmin= CenterX+1 - 30;
axmax= CenterX+1 + 30;
aymin= CenterY+1 - 30;
aymax= CenterY+1 + 30;

% Display0 will show the raw data plot with out labels or titles. 
if(selection == 'Display0')
    MyPlotName = 'SearchNeighborhoodRaw';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    
    % Search Neighborhood is the raw data plot.
    surf(SearchNeighborhood);    
    az = 90;
    el = 0;
    view(az, el);
    
end

% Display1 will show the raw data plot from search neighborhood with labels and titles.
if( selection == 'Display1')
    MyPlotName = 'SearchNeighborhoodRaw';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    
    % SearchNeighborhood is the raw data plot.
    surf(SearchNeighborhood);
    title('SearchNeighborhoodRaw');
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])
    
    % set view orthogonal to z-axis offset by 45.
    az = 80;
    el = 30;
    view(az, el);
    

   
end

% Display1 will show the polynomial determined from search neighborhood by itself with titles and labels.
if( selection == 'Display2')
    MyPlotName = 'DeterminedPolynomial';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    
    % Z is the polynomial function. 
    surf(Z);
    title('DeterminedPolynomial');
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])

    % set view orthogonal to z-axis offset by 45.
    az = 45;
    el = 0;
    view(az, el);


end

% Display3 will show an overlay of the polynomial on the raw data with labels and titles.
if( selection == 'Display3')
    MyPlotName = 'FittedPolynomial';
    figure('Name',MyPlotName,'NumberTitle','off');
    hold on
    
    % SearchNeighborhood is the raw data plot.
    surf(SearchNeighborhood);
    
    % Z is the polynomial function.
    surf(Z);
    title('FittedPolynomial')
    xlabel('ImagePlane X coordinate');
    ylabel('ImagePlane Y coordinate');
    zlabel('Sensor Value');
    plot3(CenterX+1,CenterY+1,z,'.');
    axis([axmin axmax aymin aymax 0 MaxZ])

    % set view orthogonal to z-axis offset by 45.
    az = 90;
    el = 0;
    view(az, el);


end

return

%***********************************************************END


