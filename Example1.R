# Squaring elements of a given vector

square_for <- function(x){
  # [ToDo] Use the for loop
  
  #create variables for size of x and squared x
  n = length(x)
  square = numeric(n)
  
  #create for loop to square x
  for(i in 1:n){
    square[i] = x[i]^2
  }
  
  #return square values
  return(square)
}

square_sapply <- function(x){
  # [ToDo] Use the sapply function
  square = sapply(x, function(z) z^2)
  
  #return square values
  return(square)
}

square_vec <- function(x){
  # [ToDo] Use power(^) function in vector form
  square = x^2
  #return square values
  return(square)
}

square_vec2 <- function(x){
  # [ToDo] Use multiplication(*) function in vector form
  square = x * x
  #return square values
  return(square)
}

# [ToDo] Create a vector x of size 100,000 of normal variables

x <- rnorm(100000)

# [ToDo] Verify that all functions return the same output
y1 = square_for(x)
y2 = square_sapply(x)
y3 = square_vec(x)
y4 = square_vec2(x)

identical(y1, y2)
identical(y1, y3)
identical(y1, y4)

# [ToDo] Use microbenchmark package to compare three functions in terms of speed
library(microbenchmark)
microbenchmark(square_for(x),
               square_sapply(x),
               square_vec(x),
               square_vec2(x))

