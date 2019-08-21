X = xlsread("breast_data.csv");%initialize dataset here
K = 2;
max_iter = 300;
mu = initCentroids(X, K);

for i=1:max_iter
  C = getClosestCentroids(X, mu);
  mu = computeCentroids(X, C, K);
end

initial centroids
function mu = initCentroids(X, K)
   randidx = randperm(size(X,1));
    mu = X(randidx(1:K), :);
  end
 
  
%calculate the distance
function C = getClosestCentroids(X, mu)
  K = size(mu, 1);
  C = zeros(size(X,1), 1);
  m = size(X,1);

  for i=1:m
    k = 1;
    min_dist = sum((X(i,:) - mu(1,:)) .^ 2);
    for j=2:K
        dist = sum((X(i,:) - mu(j,:)) .^ 2);
        if(dist < min_dist)
          min_dist = dist;
          k = j;
        end
    end
    C(i) = k;
  end
end
%recompute the centroids
 function mu = computeCentroids(X, idx, K)
  [~,n] = size(X);
   mu = zeros(K, n);
  
  for i=1:K
    xi = X(idx==i,:);
    ck = size(xi,1);
    mu(i, :) = (1/ck) * sum(xi);
    mu(i, :) = (1/ck) * [sum(xi(:,1)) sum(xi(:,2))];
  end
end

