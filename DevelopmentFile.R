library(devtools)
library(roxygen2)
setwd("~/Documents/Github/PS5")
devtools::create("integrateIt")

current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
test(current.code)

## purposely test error message

obj <- integrateIt(1:11, 11:21, 1, 11, "Trap")
obj2 <- integrateIt(1:11, 11:21, 1, 11, "abfew")
obj2
print(obj)
obj
