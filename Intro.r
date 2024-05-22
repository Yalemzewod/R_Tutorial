
## Introduction to RStudio and Basic Expressions

## Basic R syntax


## Task 1: Arithmetic
## Task 2: Objects
## Task 3: Vectors
## Task 4: Text 
## Task 5: Logical operators

#We are going to begin with using R with standard operations. R ignores spaces so 1+2 and 1 + 2 will give us the same result.  

## Arithmetic

1+2             #addition
1 + 2             #addition with spaces

4 * 8             #multiplication

6^2     #exponent

(1 + (2^2  * 4*8)) - (4/3) #order of operations

#Now lets try a expression within a function. Function, which takes as an input (or multiple inputs) and produces an output. 
#Here the function abs() is going to give the absolute value. Importantly, any time that you want to see what a particular function 
#does, just put the question mark sign and the function name.

abs(-4)
?abs

round(2.4)

?round

floor(2.4)

ceiling(2.4)

sqrt(16)

log(10)     # natural log; ln

log10(10)   # log base-10

## Objects 

val <- 4*8

val

#R can store information as an object, with a name of our choice. Once we have created an object, we can refer to it by name. 
#We want to normally pick names that are informative and easy to remember. Object names cannot begin with a number, cannot contain spaces, 
#and should not use special characters. In R-studio, in the upper right hand window, called Environment, we will see the objects that we create. 
#We use the assignment operator <- to assign some value to an object. 


#Now lets put this all together.

#What is the square root of the value of line 26 rounded?

#first lets assign the opperation from line 26 to an object
val <- (1 + (2^2  * 4*8)) - (4/3) 
val


#next lets take the square root and assign it to a new object with a new name 
sqrt_val <- sqrt(val) 

#if you cannot remember square root, try ?sqrt
?sqrt 

#now lets see what the output is?
sqrt_val

#now lets round it 
?round
round_sqrt_vale <- round(sqrt_val)
round_sqrt_vale

#What is the answer?

11

## Vectors

##Vector is a basic data structure in R. It contains element of the same type. 
#The data types can be logical, integer, double, character, complex or raw. 
#A vector's type can be checked with the typeof() function.

val <- c(val,999)       #concatenate
val 

val[1]
val[2]

c(1:9) #sequence
?seq
seq(from=1,to=9,by=1) #sequence 2

seq(1,9,1)

seq(-100,100,10)


rep(1,10)               #repeat

vec1 <- c(1:10)
vec2 <- 10*vec1

vec1
vec2

##Do operations on your vectors

vec2-vec1
vec2/vec1

typeof(vec1) #what is its type?
is.vector(vec1)  #what kind of object?



##R can also work with text 

rep("hello",10)

paste("hello","world") #similar to concatenate but takes the text characters into quotes

paste("hello","world", sep=";") #decide how to put the words together

rep(paste("hello","world",sep=" "),10)

first_hello <- paste("hello","world", "!",sep=" ")
rep(first_hello, 10)

## Logical operators
## A logical value is often created via comparison between variables.
## Ask yourself what will the evaluation be?

3 > 4

3 = 4

3 == 4

3 != 4

!(3==4)

(5+3) > (2*3) # 8 is greater than 6

## Can also do it for vectors greater than 1

seq(0,2,0.1) > seq(0,2,0.1)^2

## Other logicals 

(3<4) & (5>6)   # & means "and"

(3<4) | (5>6)   # | means "or"

## Can assign to object 

results_logical <- seq(0,2,0.1) > seq(0,2,0.1)^2


