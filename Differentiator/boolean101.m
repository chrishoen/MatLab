%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function test1

b1 = [1,1,1;1,0,1;1,0,0]
b2 = [1,0,1;1,0,0;0,1,0]
bout1 = logical(b1*b2)
bout2 = b1 & b2
bout3 = b1 | b2
bout4 = b1 <= b2
return

