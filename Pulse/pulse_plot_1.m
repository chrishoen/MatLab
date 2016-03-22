function test1

x = load('C:\MyLib\Data\PulsePdw11.csv');
stem(x(:,2),x(:,3))
axis([0 inf -2.0 2.0])


return

