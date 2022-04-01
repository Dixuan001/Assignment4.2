function cube(x,T)
%a为半径
a=x/2;
% 8个顶点vertex
v=[a a a;-a a a;-a -a a;a -a a;a a -a;-a a -a;-a -a -a;a -a -a];
V=v';
v=zeros(3,8);
for i=1:8
    v(:,i)=T*V(:,i);
end
v=v';
% 12条边side
hold on;
plot3(v([1 2 3 4 1 5],1),v([1 2 3 4 1 5],2),v([1 2 3 4 1 5],3),'-b');
plot3(v([6 7 8 5 6 2],1),v([6 7 8 5 6 2],2),v([6 7 8 5 6 2],3),'-b');
plot3(v([3 7],1),v([3 7],2),v([3 7],3),'-b');
plot3(v([4 8],1),v([4 8],2),v([4 8],3),'-b');
view(3); rotate3d;
hold off;
grid minor;

