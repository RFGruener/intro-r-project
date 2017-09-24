# 9-23-17
x <- 2 
x
x <- 2 + 2 


x <- c(1, 3, 5)
x

x <- 1:5 
x

dir()
unzip("data/r-novice-inflammation-data.zip")
my_data <- read.csv("data/inflammation-01.csv", header = F)


head(my_data)

row_cols <- dim(my_data)

class(x)

class("hello world")
class(my_data)

my_data[1,1]
y<- 4
my_data[y,1]

my_data[1:5, 1]
my_data[x, 1]
my_row <- my_data[x,1]
my_row

my_data[,c("V1", "V2")]

col17<- my_data$V17
class(col17)

summary(my_data[,c(1,2,3)])

x<- 5:1
x
x == 3
x[x < 3]

my_col <- my_data[,2]
sub_col <- my_col[my_col == 0]
sub_col
length(sub_col)
length(my_col)
other_col <- my_col[my_col != 0]
length(other_col)

x[-4]
# - takes away data from the values (removes the nth term)

my_data$x <- my_data$V1 + my_data$V2
# create a new column name using the assign key, name my_data$"NEW_COL_NAME"

x[1] <- 0
x

x <- x[-4]
x
x <- 1:10
x <- x[-c(4,6,8,9,10)]
x[-4]

z <- 3

z = 5
z == 5


?mean
