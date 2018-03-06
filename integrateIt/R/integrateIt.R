#' Integration function
#'
#' @param xvals A numeric vector
#' @param yvals A numeric vector of the same length as \code{xvals}.
#' @param a Start index of integration within xvals & yvals
#' @param b End index of integration within xvals & yvals
#' @param rule A string indicating whether or not to integrate with Trapezoid or Simpson method
#'
#' @return An object of class Trapezoid or Simpson containing
#'  \item{xvals}{x values from input}
#'  \item{yvals}{y values from input} 
#'  \item{integral}{Area under the curve}
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @note Area under the curve based off of x&y-coordinates, starting and ending index of integration, and estimator type
#' @examples
#' 
#' myX <- c(1:10) 
#' myY <- c(11:20) 
#' integrateIt(myX, myY, 5, 9, Trapezoid)
#' @seealso \code{\link{Trapezoid}} & \code{\link{Simpson}}
#' @rdname integrateIt
#' @aliases integrateIt, ANY-method

# create generic integrateIt method
#' @export
setGeneric(name = "integrateIt", def = function(xvals = "numeric", yvals = "numeric", a = "numeric", b = "numeric", rule = "String") {
  standardGeneric("integrateIt")
})

#' @export
setMethod(f = "integrateIt", definition = function(xvals, yvals, a, b, rule){
    # since each x-value corresponds to a y-value (representing a single point),
    # the x & y vectors must have the same length, return error otherwise
    if(length(xvals) != length(yvals)) {stop("Error, there must be the same number of x & y values.")}
    # integration not possible if only one point is given 
    if(length(xvals) == 1) {stop("There must be at least two points to integrate between.")}
    xvals <- xvals[a]:xvals[b] # trim the xvals vector depending on given start/end indices
    yvals <- yvals[a]:yvals[b] # trim the yvals vector depending on given start/end indices
    n <- length(xvals) - 1 # there should be n subdivisions -- # of points - 1
    h <- (b-a)/n
    if(rule == "Trap") {
      # return an object of class Trapezoid
      # return values of x & y
      # return result
      integral <- (h/2)*(2*sum(yvals) - yvals[1] - yvals[length(yvals)]) # Trapezoid formula
      return(new("Trapezoid", xvals=xvals, yvals=yvals, integral=integral)) # create a Trapezoid object
    }
    else if(rule == "Simpson") {
      even_yvals <- yvals[c(FALSE,TRUE)]
      integral <- (h/3)*(2*sum(yvals) - yvals[1] - yvals[length(yvals)]) # Simpson formula
      integral <- integral + (h/3)*(2*sum(even_yvals)) # Simpson formula
      return(new("Simpson", xvals=xvals, yvals=yvals, integral=integral)) # create a Simpson object
    }
    else {
      stop("Invalid rule.") # if neither Trap nor Simpson is entered as the rule, return an error
    }
})
