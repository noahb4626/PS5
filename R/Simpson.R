#' A Simpson class
#' 
#' Objects of class \code{Simpson} are created by \code{integrateIt}
#'
#' @param xvals a numeric vector
#' @param yvals a numeric vector, same dimensions as \code{xvals}
#' @param integral area under curve using Simpson technique
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method integrateIt,Simpson-method print
#' @rdname Simpson
#' @seealso \code{\link{integrateIt}}
#' 
#' @export
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
setValidity("door", function(object){
  if(length(yvals) %% 2 == 0){return("There must be an even number of subdivisions.")}
}
)

#' @export
setMethod("initialize", "Simpson", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 
