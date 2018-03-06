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

# create print method for Trapezoid class
#' @export
setMethod(f = "print", "Trapezoid", definition = function(x){
            return(x@integral)
          }
)

# create print method for Simpson class
#' @export
setMethod("print", "Simpson", definition = function(x){ 
            return(x@integral)
          }
)

