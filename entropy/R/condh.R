#' Calculates conditional entropy from feature vectors
#'
#' \code{condh} computes the conditional entropy from two or more feature vectors.
#' @param ... Two or more feature vectors which are the same length, or a list
#'   or data frame whose components can be so interpretted.
#' @param cond a vector providing the subscripts which the probability will be conditioned over.  For instance, 1 indicates the first vector, 2 indicates
#'   the second vector.
#' @return The empirical conditional entropy
#' @details Two or more feature vectors must be supplied.  \code{margin} must be specified.
#' @seealso \code{\link{prob}} and
#'   \code{\link{marginalize}}
#' @export
#' @examples
#' x = c(1,2,3,3)
#' y = c(1,1,2,2)
#' h1 = condh(x,y,cond=2) # H(x|y)
#' z = c(3,3,2,1)
#' h2 = condh(x,y,z,cond=2) # H(x,z|y)
#' h3 = condh(x,y,z,cond=c(1,2)) # H(z|x,y)

condh <- function(...,cond) {
	# Uncertainty in a joint distribution knowing the outcome of a conditional
	p <- prob(...)
	q <- marginalize(p,cond)
	entropy(p)-entropy(q)
}
