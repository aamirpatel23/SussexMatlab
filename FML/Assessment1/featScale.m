function [x, X_avg, X_std] = featScale(X)
% Scales features by
%
% x =  x-mean(x_feature)/standardDeviation
%
% Input data must be of dimentions [m * n]
%   where m is the number of training examples/data
%   and, n is the number of features

X_avg = mean(X);
X_std = std(X);
x = X;

for i = 1:size(X,2)
    x(:,i) = X(:,i) - X_avg(i);
    x(:,i) = X(:,i) / X_std(i);
end

end