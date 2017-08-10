function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

a0_ones_col = ones(m, 1);
X = [a0_ones_col X];

% Here X : 5000 * 401, Theta1 : 25 * 401, a1 = (Theta1 * X')' : 5000 * 25
a1 = sigmoid((Theta1 * X')');

a1_ones_col = ones(size(a1, 1), 1);
a1 = [a1_ones_col a1];

% a1 : 5000 * 26, Theta2 : 10 * 26, a2 = (Theta2 * a1')' : 5000 * 10
a2 = sigmoid((Theta2 * a1')');


[Y p] = max(a2, [], 2);

% Have many times that forgot to use the Sigmoid function !!!









% =========================================================================


end
