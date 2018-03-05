#' Print function
#'
#' @param object Object of class Trapezoid or Simpson
#'
#' @return Area under the curve
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @note Print area under the curve of a calculated integral
#' @seealso \code{\link{Trapezoid}}
#' @seealso \code{\link{Simpson}}
#' 
#' @rdname print
#' @aliases print
#' 
#' @export
setMethod("print", "Trapezoid",
          function(object){ 
            return(object@integral)
          }
)

#' @export
setMethod("print", "Simpson",
          function(object){ 
            return(object@integral)
          }
)

