#' A Trapezoid class
#' 
#' Objects of class \code{Trapezoid} are created by \code{integrateIt}
#'
#' \itemize{
#' \item \code{xvals} a numeric vector
#' \item \code{yvals} a numeric vector, same dimensions as \code{xvals}
#' \item \code{integral} area under curve using Trapezoid technique
#' }
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Trapezoid-class initialize,Trapezoid-method integrateIt,Trapezoid-method print
#' @rdname Trapezoid
#' @seealso \code{\link{integrateIt}}
#' 
#' @export
# skeleton for an object of Trapezoid class
setClass(Class="Trapezoid", 
         representation = representation(
           xvals = "numeric",
           yvals = "numeric",
           integral = "numeric"
         ),
         prototype = prototype(
           xvals = c(),
           yvals = c(),
           integral = c()
         )
)

#' @export
setValidity("Trapezoid", function(object){
  # ensure xvals & yvals are of the same length
  # ensure there are at least 2 values in each values vector 
  if(length(object@xvals) != length(object@yvals)){return("There must be the same number of x & y values.")}
  if(length(object@xvals) < 2 | length(object@yvals) < 2){return("There must be at least two points.")}
}
)

#' @export
# initialize method
setMethod("initialize", "Trapezoid", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 