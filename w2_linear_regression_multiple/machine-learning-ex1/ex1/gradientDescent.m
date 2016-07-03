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


% size(theta)
% 2 x 1
% Need to ensure delta is 2 x 1

% size(X)
% 97 x 2

% size(y)
% 97 x 1

% size(predictions)
% 97 x 1

% size(X')
% 2 x 97

% size(delta)
% 2 x 1

% METHOD 1
predictions = X * theta;
delta = (1/m) * X' * (predictions - y);
theta = theta - alpha * delta;

% METHOD 2
% theta = pinv (X' * X) * X' * y;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end