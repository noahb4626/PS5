#' A Simpson Object
#' 
#' Object of class \code{Simpson} are created by the \code{integrateIt} and \code{print} functions
#'
#' 
#' An object of the class 'Simpson' has the following slots:
#' \itemize{
#' \item \code{xvals} a numeric vector
#' \item \code{yvals} a numeric vector, same dimensions as \code{xvals}
#' \item \code{area} a numeric 
#' }
#'
#' @author Noah Bardash: \email{noah.bardash@@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method integrateIt,Simpson-method print,Simpson-method 
#' @rdname Simpson
#' @export
setClass(Class="Simpson", 
         representation = representation(
           xvals = "numeric",
           yvals = "numeric",
           area = "numeric"
         ),
         prototype = prototype(
           xvals = c(),
           yvals = c(),
           area = c()
         )
)

#' @export
setMethod("initialize", "Squares", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 

#' @rdname Squares
#' @export 
setGeneric("getSquares",
           function(object="Squares")  {
             standardGeneric("getSquares")
           }
)

#for classes: setclass, setvalidity, setmethod for simpson, trapezoid


#' @export
setMethod("getSquares", "Squares",
          function(object){ 
            return(object@square)
          }
)