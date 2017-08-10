function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

z = X * theta;
h = sigmoid(z);
J = 1/m * sum(-y.*log(h)-(1-y).*log(1-h));

% No need to use grad = grad - 1/m * ((h-y)'*X)' here with the formula in
% PDF, the function fminunc will get the J and grad for its use.
% Also notice there no learning rate which we have in gradient descent we
% made by ourselves.
grad = 1/m * ((h-y)'*X)'; 

% Actual:   m: 100, n: 2 ==> X: 100 * 3, theta: 3 * 1, y: 100 * 1
% Formula:  h(x) = g(z), z = theta'*X
% Actual:   h(x): (n+1) * 1 = 3 * 1 

% Actual:   grad: (n+1) * 1 = 3 * 1



% =============================================================

end
