% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/marginalize.R
\name{marginalize}
\alias{marginalize}
\title{Calculates the marginal probability from a joint probability}
\usage{
marginalize(p, margin)
}
\arguments{
\item{p}{A probability table}

\item{margin}{Subscripts describing the margins to retain}
}
\value{
The marginal probability
}
\description{
\code{marginalize} computes the marginal probability givens a joint probability and margin subscripts
}
\details{
None
}
\examples{
x = c(1,2,3,3)
y = c(1,1,2,2)
p <- prob(x,y) # P(x,y)
q <- marginalize(p,1) # P(x)
}
\seealso{
\code{\link{prob}}
}

