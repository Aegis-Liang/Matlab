% row picture
% |2  -1||x|  =   |0| 
% |-1  2||y|      |3|
% first row:  2x - y = 0
% second row: -x + 2y = 3
% look each row in the equation, every row could has a line in the plane,
% the 2 row has a cross point, this point is the solution.

x = -5:1:5;
y1 = 2*x;
y2 = (3+x)/2;

figure


plot(x,y1,'-o', 'MarkerIndices',[6 8], ...
                'MarkerEdgeColor','k', ...      % edge black
                'MarkerFaceColor','k', ...      % fill white
                'MarkerSize',4);                 
hold on
plot(x,y2,'-o', 'MarkerIndices',[5 8], ...
                'MarkerEdgeColor','k', ...      % edge black
                'MarkerFaceColor','k', ...      % fill white
                'MarkerSize',4);    

hold on;
plot(1, 2, 'ro','MarkerFaceColor','r', 'MarkerSize', 8);

xlabel('x') % label should be after plot
ylabel('y')

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';  % setting y axis location to origin

ax.Box = 'off';
ax.Layer = 'top';
