function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

J1 = sum((-y.*log(1 ./(1 + exp(1).^-(X *theta)))) - (1 - y).*log(1 - (1 ./( 1 + exp(1).^-(X * theta))))) / m;
grad1 = (X.' * (1 ./ (1 + exp(1).^-(X *theta)) - y)) / m;

theta(1) = 0;
J2 = (lambda/(2 * m)) * (theta.' * theta);
grad2 = ((lambda/ m) * theta);
J = J1 + J2
grad = grad1 + grad2


    


% =============================================================

end
