% row picture
% |2  -1||x|  =   |0| 
% |-1  2||y|      |3|
% first row:  2x - y = 0
% second row: -x + 2y = 3
% look the equation as combination of vectors, we will look for the
% solution for combination of x * [2; -1] and y * [-1; 2] to get [0; 3]  

v1 = [2 -1];                            
v2 = [-1 2];


figure
quiver(0,0,v1(1),v1(2),0,'MaxHeadSize',0.5)

% find this code in stackoverflow
%{
headWidth = 5;
ah = annotation('arrow',...
    'headStyle','cback1','HeadLength',headLength,'HeadWidth',headWidth);
set(ah,'parent',gca);
set(ah,'position',[X(ii,ij) Y(ii,ij) LineLength*U(ii,ij) LineLength*V(ii,ij)]);
%}

hold on
quiver(0,0,v2(1),v2(2),0,'MaxHeadSize',0.5)


quiver(v1(1),v1(2),v2(1),v2(2),0,"g--",'MaxHeadSize',0.5)
v3 = v1 + v2;
quiver(v3(1),v3(2),v2(1),v2(2),0,"g--",'MaxHeadSize',0.5)
plot(0, 3, 'ro','MarkerFaceColor','r', 'MarkerSize', 4);

grid
axis([-5 5 -5 5])
text(v1(1),v1(2), sprintf('(%.0f,%.0f)',v1))
text(v2(1),v2(2), sprintf('(%.0f,%.0f)',v2))


xlabel('x') % label should be after plot
ylabel('y')

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';  % setting y axis location to origin

ax.Box = 'off';
ax.Layer = 'top';
