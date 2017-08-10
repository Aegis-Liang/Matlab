function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% mistake I made:
% 1. Cost function need to be squared
% 2. Cost function has a 1/2m factor
% 3. 1/2m factor is 1/(2*m) not 1/2*m in expression form. =.=!!!
J = 1/(2*m)*sum((X*theta-y).^2);

% But there is still an issue(also a trick) which is X*theta is not in the
% same form with theta'*X we learned, we can try this, but more complicated:
% J = 1/(2*m)*sum(((theta'*X')'-y).^2);


% =========================================================================

end
