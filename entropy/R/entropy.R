#' Calculates joint entropy from joint probability table
#'
#' This function computes entropy (in bits) from a probability table.
#' @param p A probability table
#' @export
#' @details
#' The probability table p must sum to 1.
#' @seealso \code{\link{prob}}
#' @examples
#' x = c(0,1,2,0)
#' p = prob(x) # P(x)
#' h = entropy(p) # H(x)

entropy <- function(p) {
	# entropy generated from joint probability
    idx <- p>0
    -sum(p[idx]*log2(p[idx]))
}
