# unsupervised learning

### clustering

*. K-means

  * iterative
  * two cluster centroid blue and red(random initialize)

    1. color data blue and red base on weather they near blue or red
    
    2. mean distance to blue and red
    
    3. move centroid to mean 
    
    4. goto 1
    
    
  * K-means algorithm

    Repeat{
      
    * (cluster assignment)for i = 1 to m
      c(i) := index (for 1 to K) of cluster centroid closest to x(i)
      
    * (move centroid)for k = 1 to K
      u(k) := mean of points assigned to cluster k
      
    }

  * K-means for no separated cluster
  
*. optimization objective

  * min J(c(1),c(2)....,c(m),u1,....uk)
    
  * cluster assignment step => min J(c(1),c(2),...,c(m))


*. random initialize

  * K < m
    random pick K training examples
    
    set  u1,....,uk equal to these K examples
    
  * local optima(end up differently with different initialization)
  
    bad  initialization leads to local optima
    
    solution:
      for i = 1 to 100{
        Random initialize K-means
        Run K-means  Get c(1) ,...c(m),u1,....uk
        compute cost function(distortion)
        J(c(1),.....c(m),u1,....uk)
      }
    
        pick  clustering that gave lowest cost J(c(1),.....c(m),u1,....uk)  
    
    
*. Choosing the number of cluster(K)  
  
  * manually is main solution


  * Elbow method(worth a shot but not always work)
    plot(Elbow)
    x :K(no of clusters)
    y :J(cost function)
    
    pick the elbow of curve


  * another way 
    reality perspective 
    
### (Dimensionality Reduction)Principal Components Analysis

*. motivation 

  * data  compression
  
  * data visualization
  
*. Principal Components Analysis

  * Formulation 
    project can on different line
    reduce from 2-d to 1-d :Find a direction (a vector u(1) belongs to  R(n)) onto which to project the data so mini the project error
    
    project can on different line
    reduce from n-d to k-d :Find a direction (k vector u(1) .... u(k) belongs to  R(n)) onto which to project the data so mini the project error
 
*. PCA is not linear regression
  
  linear regression mini vertical distance between a line and x
  
  PCA  mini projection of x on line
  
*. Principal Components Analysis Algorithm 
  * Data preprocessing
  
    reduce data from n-d to k-d
    1. compute "covariance matrix"
      Sigma = (1/m)*sigma(n,i=1)(x(i))(x(i))T
      
    2. compute "eigenvectors" of matrix Sigma
    octave function
    [U,S,V] = svd(Sigma);
    eig(Sigma)
      
    Sigma is a n*n matrix  
    
    U matrix is a also n*n matrix
    
    the column of U is u(1),...u(n)  
  
    3. take first k column
    U-reduce := u(1),...u(k)
    U-reduce is n * k matrix
    
  
  * summary
    after mean normalization and feature scaling
    
    sigma = (1/m)*X'*X;
    
    [U,S,V] = svd(Sigma);
    
    U-reduce = U(:,1:k);
    
    z = U-reduce'*x;
  
*. Applying PCA
    
  * Reconstruction from   compressed Representation
  
  * Choosing the number of Principal Components
    * min average squared projection error
    
    * total variation in the data
    
    * choose k to smallest value so division of two virable less 0.01
    "99% of variance is retained"
    
   [U,S,V] = svd(Sigma)
    use S to choose smallest value of k for which "99% of variance is retained"
  
  * use PCA speed up Supervised learning
  
    * data Compression
      reduce memory/disk need to store data
      speed up learning algorithm
      
    * visualization (k=2,k=3)
    
  *  Bad use of PCA:To prevent overfitting(use regularization in stead!)
  
  * Advices for PCA
    Before implementing PCA, first try running whatever you want to do with the original/raw data x(i) Only if that doesn't do what you want then use PCA
