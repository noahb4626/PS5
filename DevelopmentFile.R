
## Load libraries and set working directory
library(devtools)
library(roxygen2)
setwd("~/Documents/Github/PS5") #This will need to be changed to match your directory

## This is run once when the package strcuture is first created


## At this point put the *.R files into the correcto directories and edit the DESCRIPTION file

## Let's look through the R directory in this order:

# integrateIt.R
# print.R
# Simpson.R
# Trapezoid.R

# Now the NAMESPACE

integrateIt(1:10, 11:20, 1, 10, "Trap")
integrateIt(1:10, 11:20, 1, 10, "Simpson")
integrateIt(1:11, 11:21, 1, 11, "Simpson")


## This can be run many times as the code is updates
library(testthat)
current.code <- as.package("integrateIt")
current.code
load_all(current.code)
document(current.code)
test(current.code)

## Let's look at a function
integrateIt
getMethod(integrateIt, "Simpson")
getMethod(integrateIt, "Trapezoid")
getMethod(integrateIt)

## Let's try it out
x<-c(1,2)
y<-c(3,4)
allObj <- allSquares(x, y)
allObj
getSquares(allObj)

## Moving between classes
addObj <- addSquares(x,y)
as(object=addObj, Class="AllSquares")

