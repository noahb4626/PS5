#' A Trapezoid class
#' 
#' Objects of class \code{Trapezoid} are created by \code{integrateIt}
#'
#' @param xvals a numeric vector
#' @param yvals a numeric vector, same dimensions as \code{xvals}
#' @param integral area under curve using Trapezoid technique
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Trapezoid-class initialize,Trapezoid-method integrateIt,Trapezoid-method print
#' @rdname Trapezoid
#' @seealso \code{\link{integrateIt}}
#' 
#' @export
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
setValidity("door", function(object){
  # fill in
}
)

#' @export
setMethod("initialize", "Trapezoid", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 