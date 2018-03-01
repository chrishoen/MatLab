%***********************************************************BEGIN
function pulse_plot_201()

com.mathworks.mlwidgets.html.HtmlComponentFactory.setDefaultType('HTMLRENDERER');

set(0,'DefaultFigureWindowStyle','docked')


%*******************************************
selection = 'Display1'

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

return

%***********************************************************END


