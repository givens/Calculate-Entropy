#' Calculates mutual information from feature vectors
#'
#' This function calculates mutual information from two feature vectors.
#' @param x A data vector
#' @param y A data vector which is the same length as x
#' @export
#' @seealso \code{\link{entropy}}
#' @examples
#' x = c(0,1,1,1)
#' y = c(1,0,1,0)
#' I = mi(x,y) # I>0

source('prob.R')
source('marginalize.R')
source('entropy.R')

# I(x;y) = H(x)+H(y)-H(x,y)
mi <- function(x,y) {
	# The information shared by two distributions
    p <- prob(x,y)
    entropy(marginalize(p,1)) +
        entropy(marginalize(p,2)) -
        entropy(p)
}
