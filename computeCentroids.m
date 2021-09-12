function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);




for i=1:K
  %first get index of all values from idx where the value is i
  index = find(idx == i);
  size_of_index = size(index,1);
  %now get sum of all values with the corresponding indexes
  sum_of_everything = zeros(1,n);
  for j = 1:size_of_index
    current_index = index(j);
    sum_of_everything = sum_of_everything + X(current_index, :);
  endfor
  average = (1/size_of_index)*sum_of_everything;
  centroids(i, :) = average;
endfor





% =============================================================


end

