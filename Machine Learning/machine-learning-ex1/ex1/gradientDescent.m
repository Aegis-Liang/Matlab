function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
     theta = theta - alpha/m*((theta'*X' - y')*X)';
     
     % Printing the size the variables could helps the debug, I this it
     % could help the understand of the thought process also, below is
     % my function composing process, actually I use real data to debug/
     % compose the function and see what is happening
     
     % theta: 2 * 1 ==> theta': 1 * 2
     % X: 97 * 2 ==> X': 2 * 97
     % theta'*X': 1 * 97
     % y: 97 * 1 ==> y': 1 * 97
     % theta'*X' - y': 1 * 97
     
     % (theta'*X' - y').*X'
     % Error using  .* 
     % Matrix dimensions must agree.

     % (theta'*X' - y')*X'
     % Error using  * 
     % Inner matrix dimensions must agree.

     % (theta'*X' - y')*X : 1 * 2
     % ((theta'*X' - y')*X)' : 2 * 1
     % theta = theta - 1/m*((theta'*X' - y')*X)' : 2 * 1
     
     % missing learning rate alpha:
     % theta = theta - alpha/m*((theta'*X' - y')*X)' : 2 * 1

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
