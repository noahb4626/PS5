
integrateIt <- function(xvals, yvals, a, b, rule) {
  xvals <- xvals[a]:xvals[b]
  yvals <- yvals[a]:yvals[b]
  n <- length(xvals) - 1
  h <- (b-a)/n
  if(rule == "Trap") {
    # return an object of class Trapezoid
    # return values of x & y
    # return result
    Trap <- (h/2)*(2*sum(yvals) - yvals[1] - yvals[length(yvals)])
    return(c(Trap, xvals, yvals, rule))
  }
  if(rule == "Simpson") {
    even_yvals <- yvals[c(TRUE,FALSE)]
    Simpson <- (h/3)*(2*sum(yvals) - yvals[1] - yvals[length(yvals)])
    Simpson <- Simpson + (h/3)*(2*sum(even_yvals))
    return(c(Simpson, xvals, yvals, rule))
  }
}

integrateIt(1:10, 11:20, 1, 10, "Trap")
integrateIt(1:10, 11:20, 1, 10, "Simpson")
