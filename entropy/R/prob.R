#' Calculates joint probability
#'
#' This function computes a joint
#' probability table from one or more feature vectors.
#' @param ... One or more feature vectors which are the same length, or a list or data frame whose components can be so interpretted.
#' @return A joint probability table
#' @details None
#' @export
#' @seealso \code{\link{entropy}}
#' @examples
#' x = c(1,2,3,4,1,2,3,4)
#' y = c(1,1,2,2,1,1,2,2)
#' z = c(1,4,3,4,1,4,3,4)
#' p = prob(x,y,z) # P(x,y,z)

prob <- function(...) {
	# single or joint probability returned from one or more feature vectors
    table(...)/length(..1)
}
