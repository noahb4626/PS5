#' print method
#' 
#' Object of class \code{Simpson} or \code{Trapezoid} are created
#' by the \code{integrateIt} and \code{print} functions
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method integrateIt,Simpson-method print,Simpson-method 
#' @rdname Simpson
#' @export

#' @rdname print

#' @export
setMethod("print", "Trap",
          function(x){ 
            return(x@integral)
          }
)

#' @export
setMethod("print", "Simpson",
          function(x){ 
            return(x@integral)
          }
)