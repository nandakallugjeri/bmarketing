#' translog
#'
#' A simple log transformation
#'
#' @param x A numeric vector
#' 
#' @examples
#' translog(exp(rnorm(7)))
#' 
#' @export
translog<-function(x){
    if ( !is.numeric(x) ) stop("Input must be numeric!")
    if ( any(x<0) ) stop("Input must not be negative!")
    x <- log(x)
}

#' trans
#'
#' A class transformation, wich converts numeric to factor and factor to numeric
#'
#' @param x A numeric or factor data
#' 
#' @export
trans <- function(x){
    if (is.numeric(x)){
        x <- as.factor(x)
    } else if (is.factor(x)) {
        x <- as.numeric(as.character(x))
    }
}


#' standardize
#'
#' standardize or normalize the range of independent variables or features of data
#'
#' @param x numeric data
#' 
#' @export
standardize <- function(x){
    if(!is.numeric(x)) stop("Input must be numeric!")    
    x <- (x - mean(x)) / sd(x)
    x
}

