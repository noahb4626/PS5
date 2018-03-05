#' A Simpson Object
#' 
#' Object of class \code{Trapezoid} are created by the \code{integrateIt}
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

# validity function ensures door values are between 1 & 3 (inclusive)
setValidity("door", function(object){
  if(object@chosenDoor < 1 | object@chosenDoor > 3){return("invalid chosen door")}
  if(object@carDoor < 1 | object@carDoor > 3){return("invalid car door")}
}
)

#' @export
setMethod("initialize", "Squares", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 