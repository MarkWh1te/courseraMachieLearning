function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
pos = find(y==1);
neg = find(y==0);
pos_ex1 = X(pos,1)
pos_ex2 = X(pos,2)
neg_ex1 = X(neg,1)
neg_ex2 = X(neg,2)
plot(pos_ex1,pos_ex2,'k+');
plot(neg_ex1,neg_ex2,'ko');







% =========================================================================



hold off;

end
