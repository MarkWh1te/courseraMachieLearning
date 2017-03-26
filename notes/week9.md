# Density Estimation
## motivation: Anomaly detection

## Gaussian Distribution

1. Gaussian (Normal )Distribution

  say x belong to R, if x is a Distribution Gaussian with mean u, a variance theta^2
  x(i) ~ N(u, theta^2)
  
  - parameter estimation
    dataset:{x(1),x(2),...x(m)} x(i) belong to R
   
2. Algorithms

  - Density estimation
    Training  set:{x(1),....x(m)}
    Each example is x belong to R(n)
    
    independent

## Building an Anomaly detection System 
  - The importance of real-number evaluation
  
  - Aircraft engines  motivating  example
    1. 1000dd good engines
    2. flawed engines 
  
  - Training set:6000 good engines(y=0)
    CV:2000 good engines(y=0),10 anomalous(y=1)
    Test:2000 good engines(y=0),10
    anomalous (y=1)

    don't use same data set as CV and test
    
  - Algorithms evaluation
  
  - Anomaly Detection  VS Supervised Learning
    1. Anomaly Detection:
      * Very small number of positive 
      * examples(y=1)(0-20 is common)
      * many different "types" anomalies
    2. Supervised Learning
      * Large number of positive and negative examples
      * enough positive examples
  - Applications
    1. Anomaly Detection:
      * Fraud detection
      * Manufacturing(e.g. aircraft)
      * Monitoring  machines in a data center
    2. Supervised Learning
      * Email spam classification
      * weather prediction
      * cancer classification
  - Choosing what Features to Use
  1. No-gaussian features 
    * sometimes use log(x) replaces x features to make this feature more like Gaussian
    * Error analysis foe anomaly detection --- add new features distinguish

# Recommend System     
  1. predicting Movie Rating
  
    * User rates movies using zero to five stars
    
    * r(i,j) 1 if user j has rated movies i
    
    * y(i,j) rating given by user j to movies i(define only r(i,j)=1)
    
  2. Content-based recommend system
  
    * predict missing data 
    
    * add feature describe if the move is a romance movie or action movie
    
    * for each user j, learn a parameter  theta(j) belong to R(3), Predict user j as rating movie i with (theta(j))T*x(i) stars.
    use linear regression to do that.
    * Problem formulation
      theta(j) =parameter vector for user j
      x(i) =feature vector for movie f
      for user j,movie i predicted rating :theta(j)T* x(i)
      m(j)= no.of movies rated by user j to Learn theta(j)
      it is a linear regression problem 

  3. Collaborative Filtering
  
  * gauss theta
  
  * Algorithms
  
    - Collaborative Filtering optimization objective
    
    Give x(1),.... x(nm) estimate theta(1),....theta(nm)
    otherwise,
    
    minimizing x(1),...x(nm),and theta(1),..theta(nm)
    simultaneously,
    
    - Collaborative Filtering Algorithms
      1. initialize x(1),...x(nm),theta(1),...theta(nu) to small random values
      2. minimize J using gradient descent de
      3. for a user with parameter theta and a movie with features  x,
      predict a start rating of (theta)T* x
    - vectorization implementation:
      * low rank matrix factorization 
      * predicted ratings theta(1)T*x(i)
      
    - Finding related movies
    for each product i, we learn feature vector x belong Rn
    distance between ||x(i)- x(j)|| explains 
    
    - vectorization implementation Detail:Mean Normalization
    
    - mean data set Y get u
      use u to normalize Y
      
