#' Print function
#'
#' @param x Object of class Trapezoid or Simpson
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
setMethod(f = "print", definition = function(x){
            return(x@integral)
          }
)

#' @export
setMethod("print", "Simpson",
          function(x){ 
            return(x@integral)
          }
)

