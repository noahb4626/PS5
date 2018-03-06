#' A Simpson class
#' 
#' Objects of class \code{Simpson} are created by \code{integrateIt}
#'
#' \itemize{
#' \item \code{xvals} a numeric vector
#' \item \code{yvals} a numeric vector, same dimensions as \code{xvals}
#' \item \code{integral} area under curve using Trapezoid technique
#' }
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method integrateIt,Simpson-method print
#' @rdname Simpson
#' @seealso \code{\link{integrateIt}}
#' 
#' @export
# skeleton for an object of Simpson class
setClass(Class="Simpson", 
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
setValidity("Simpson", function(object){
  # ensure Simpson objects have an odd number of points & thus an even number of subdivisions
  # ensure xvals & yvals are of the same length
  # ensure there are at least 2 values in each values vector 
  if(length(object@yvals) %% 2 == 0){return("There must be an even number of subdivisions.")}
  if(length(object@xvals) != length(object@yvals)){return("There must be the same number of x & y values.")}
  if(length(object@xvals) < 2 | length(object@yvals) < 2){return("There must be at least two points.")}
}
)

#' @export
# initialize method
setMethod("initialize", "Simpson", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 
