#Loops

analyze <- function(file){
  data <- read.csv(file, header = F)
  avg_inflammation_per_day <- apply(data, 2, mean)
  
  return(plot(avg_inflammation_per_day, main = file))
}

dir("data/")

analyze("data/inflammation-01.csv")

for(i in 1:10){
  print(i+1)
}

inflammation_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv", 
  "data/inflammation-05.csv"
)

for(filename in inflammation_files){
  analyze(filename)
}

inflammation_files <- dir(
  path = "data",
  full.names = T,
  pattern = "^inflammation"
)
x <- 1:5
sum_x <- 0
for (i in x){
  cat("i:", i, "\n")
  cat("sum_x:", sum_x, "\n")
  sum_x <- sum_x+i
}

exponentiate <- function(x,y){
  result <- 1
  for(i in 1:y){
    result<-result*x
  }
  return(result)
}


product <- function(x, y){
  result <- 0 
  for( i in 1:y){
    result <- result+x
  }
  return(result)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
patient_mean <- apply(dat,2, mean)

patient_mean_function <- function(filename){
  dat <- read.csv(filename, header = F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[,i])
  }
  plot(means, main = filename)
}



x<-10:1
N<- length(x)
for(i in 1:N){
  print(x[i])
}

for(i in x){
  print(i)
}


day_mean_function <- function(filename){
  dat <- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  means <- numeric(dat_rows)
  for(i in 1:dat_rows){
    means[i] <- mean(dat[i,])
  }
  plot(means, main = filename)
}

day_mean_function("data/inflammation-01.csv")

test_function <- function(filename){
  dat <- read.csv(filename, header = F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[1]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[i,])
  }
  plot(means, main = filename, ylim = 0)
}

test_function("data/inflammation-01.csv")

dat <- data.matrix(read.csv("data/inflammation-01.csv", header = F))










