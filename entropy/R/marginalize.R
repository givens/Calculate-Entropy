#' Calculates the marginal probability from a joint probability
#'
#' \code{marginalize} computes the marginal probability givens a joint probability and margin subscripts
#' @param p A probability table
#' @param margin Subscripts describing the margins to retain
#' @return The marginal probability
#' @details None
#' @seealso \code{\link{prob}}
#' @export
#' @examples
#' x = c(1,2,3,3)
#' y = c(1,1,2,2)
#' p <- prob(x,y) # P(x,y)
#' q <- marginalize(p,1) # P(x)

marginalize <- function(p,margin) {
	# marginalization of a joint probability
	apply(p,margin,sum)
}