# Conditionals in R

num <- 3
if (num > 5){
  print("Greater than 5")
  } else {
    print("Less than 5")
  }

num <- 53
if (num > 100){
  print("greater than 100!!")
}

# exercise: write a function to return (0,-1,1) based on the sign of the input integer.

sign <- function(number){
  if(number == 0){
    return(0)
  } 
  if(number>0){
    return(1)
  } 
  if(number<0){
    return(-1)
  }
}

if (1 >0 & -1 > 0){
  print("Both parts are true")
} else {
  print("at least one part is false")
}

if (1 >0 | -1 > 0){
  print("at least one part is True")
} else {
  print("Both are False")
}


if (1 >0 ){
  if (-1 > 0) {
    print("both are true")
  } else {
    print("at least one is false")
  }
} else {
  print("At least one is false")
}

# Grabbing Odd Numbers

n100 <- seq(1,100)
get_odd <- function(v){
  return(v[v %% 2 == 1])
}

n100[n100 %% 2 == 1]


# Exercise: write a function which takes 3 arguments:
#   v - a vector of intergers
#   x - a number to divide by to check for even divisibility
#   y - a second number to check for even divisibility
# Output should be all numbers in v that are evenly divisible by both "x" and "y"
# Example : double_div(c(1,2,3,4), 2, 4) => [4]
# NOTE must use a for loop

double_div<- function(v, x, y){
    for(i in v){
      if((i%%x == 0) & (i%%y == 0)){
        print(i)
      }
    }
}

double_divide <- function(v,x,y){
  return(v[(v%%x == 0) & (v%%y == 0)])
}

# Challenge exercise:
# Write a function which takes in 1 argument: v- a vector of positive integers
# And returns a vetor of the prime integers from v



