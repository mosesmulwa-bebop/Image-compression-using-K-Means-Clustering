function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);


%
difference_vector = zeros(K,1);
m = size(X,1);
for i = 1:m
  currentexample = X(i , :); 
  for j=1:K
    currentcentroid = centroids(j, :);
    difference = currentexample - currentcentroid;
    magnitude_difference = 0;
     for h  = 1: size(difference,2)
       magnitude_difference = magnitude_difference + (difference(h))^2;
     endfor
    difference_vector(j) = magnitude_difference;
  endfor 
  minimum_difference = min(difference_vector,[], 1);
  index_of_minimum_difference = find(difference_vector == minimum_difference);
  if(size(index_of_minimum_difference,1) > 1)
     index_of_minimum_difference = index_of_minimum_difference(1);
  endif
  idx(i) = index_of_minimum_difference;
endfor



% =============================================================

end

