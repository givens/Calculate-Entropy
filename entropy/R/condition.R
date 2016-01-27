#'Produces conditional probability from a joint one
#'
#'\code{condition} computes the conditional probability from a joint probability talbe.
#'@param p A joint probability table
#'@param cond A vector providing the subscripts which the probability will be conditioned over.  For instance, 1 indicates the first vector, 2 indicates the second vector, ....
#'@return A conditional probability table
#'@details The probability table must be represent a joint probability table which sums to 1.
#'@seealso \code{\link{prob}} and \code{\link{marginalize}}
#'@export
#'@examples
#'x = c(1,2,3,3)
#'y = c(1,1,2,2)
#'p = prob(x,y) # P(x,y)
#'q = condition(p,1) # P(y|x)

condition <- function(p,cond) {
	# generate conditional probability from a joint one
	sweep(p,cond,
		marginalize(p,cond),
		function(x,y) ifelse(y==0,0,x/y))
	# note:  if y is zero, x is zero.
}
