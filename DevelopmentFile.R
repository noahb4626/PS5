library(devtools)
library(roxygen2)
setwd("~/Documents/Github/PS5") # set working directory
devtools::create("integrateIt") # implement devtools

current.code <- as.package("integrateIt") # set integrateIt package as current code
load_all(current.code) # load integrateIt package
document(current.code) # create documentation
check(current.code) # build R package

# integrate from 1-10 incremented by 1 (9 subdivisions) with Trapezoid method
test1 <- integrateIt(1:10, 11:20, 1, 10, "Trap")
test1 # object of class Trapezoid
print(test1)
# integrate from 1-11 incremented by 1 (10 subdivisions) with Simpson method
test2 <- integrateIt(1:11, 11:21, 1, 11, "Simpson")
test2 # object of class Simpson

# integrate from 1-10 incremented by 1 (9 subdivisions) with Simpson method
# will throw error & fail to create object because Simpson method requires an even number of subdivisions
test3 <- integrateIt(1:10, 11:20, 1, 10, "Simpson")

# integrate from 1-10 incremented by 1 (9 subdivisions) with nonexistent method
# will throw error & fail to create a new object
test4 <- integrateIt(1:10, 11:20, 1, 10, "ABCD")

