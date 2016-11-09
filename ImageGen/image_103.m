%BEGIN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function image_103

NRows = 800;
NList = NRows^2;
I = double(checkerboard(NRows/8)>0.5);
size(I)
imshow(I)


PointXYZ = zeros(NList,3);
PointVal = zeros(NList,1);

z=0.0;
n=1;
m=0;
for i=1:NRows
   for j=1:NRows
       PointXYZ(n,1)=double(i);
       PointXYZ(n,2)=double(j);
       PointXYZ(n,3)=double(z);
       value=double(I(i,j));
       PointVal(n)=value;
       if value > 0.5
           m=m+1;
       end
       n=n+1;
   end
end   

PointList = zeros(m,3);

for i=1:m
   PointList(i,:)=PointXYZ(i,:);
end   

disp(m)
%disp(PointList)

ptCloud = pointCloud(PointList)

pcshow(ptCloud)
return
%END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

