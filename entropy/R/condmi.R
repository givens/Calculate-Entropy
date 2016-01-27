#' Calculates conditional mutual information from data vectors
#'
#' This function calculates conditional mutual information in bits from data vectors.
#' @param x First vector
#' @param y Second vector which is the same length as x
#' @param z Condition vector which is the same length as x
#' @export
#' @seealso \code{\link{mi}}
#' @examples
#' x = c(1,2,3,4,1,2,3,4)
#' y = c(1,1,2,2,1,1,2,2)
#' z = c(1,4,3,4,1,4,3,4)
#' I = condmi(x,y,z) # I(x;y|z)

# I(x;y|z) = H(x,z)+H(y,z)-H(z)-H(x,y,z)
condmi <- function(x,y,z) {
	# information between two distributions after the conditional distribution is known
    p <- prob(x,y,z)
    entropy(marginalize(p,c(1,3))) + # H(x,z)
        entropy(marginalize(p,c(2,3))) - # H(y,z)
        entropy(marginalize(p,3)) - # H(z)
        entropy(p) # H(x,y,z)
}
