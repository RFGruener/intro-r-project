# Functions in R 

fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp - 32)*(5/9))
  return(kelvin)
  
}


k_to_c <- function(T){
  celsius <- (T - 273.15)
  return(celsius)
}

# farenheit -> celcius
F_to_C <- function(temp){
  kelvin <- fahr_to_kelvin(temp)
  celsius <- k_to_c(kelvin)
  return(celsius)
}


# Define a function "fence" which takes 2 vectors and returns the second vector concatenated to the first
fence <- function(vec1, vec2){
  final <- c(vec2, vec1)
  return(final)
}


input_1 <- 20

my_sum <- function(input_1, input_2 = 20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}

# function to center my data

center <- function(data, desired){
  # Return a vector centered around a desired value
  # Example : center(c(1,2,3), 0) => c(-1,0,1)
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

z <- c(0,0,0,0)

dat <- read.csv("data/inflammation-01.csv", header = F)

centered <- center(dat[,4], 0)
head(centered)
head(dat[,4])


# ------Apply Functions----------
head(dat)
dim(dat)
patient1 <- dat[1,]

avg_day_inflammation <- apply(dat, 2, mean)
length(avg_day_inflammation)

plot(avg_day_inflammation)
max_dat_inflamation <- apply(dat, 2, max)
plot(max_dat_inflamation)
plot(max_dat_inflamation)

# Exercise : 
# create a function called "analyze" whose input is the name of a dataset (e.g. "data/inflammation-01.csv, and output a plot of the mean inflammation per day)

analyze <- function(file){
  data <- read.csv(file, header = F)
  avg_inflammation_per_day <- apply(data, 2, mean)
  
  return(plot(avg_inflammation_per_day))
}








