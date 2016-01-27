#' Calculates joint entropy from feature vectors
#'
#' This function calculates entropy in bits from data vectors.
#' @param ... A number of vectors which are same length.
#' @export
#' @examples
#' N = 100
#' x = sample(1:2,size=N,replace=T)
#' y = sample(1:3,size=N,replace=T)
#' z = sample(1:4,size=N,replace=T)
#' h = h(x,y,z) # H(x,y,z)

# H(x), H(x,y), H(x,y,z), or ...
h <- function(...) {
	# The uncertainty in the joint distribution
    p <- prob(...)
    entropy(p)
}
