% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/condmi.R
\name{condmi}
\alias{condmi}
\title{Calculates conditional mutual information from data vectors}
\usage{
condmi(x, y, z)
}
\arguments{
\item{x}{First vector}

\item{y}{Second vector which is the same length as x}

\item{z}{Condition vector which is the same length as x}
}
\description{
This function calculates conditional mutual information in bits from data vectors.
}
\examples{
x = c(1,2,3,4,1,2,3,4)
y = c(1,1,2,2,1,1,2,2)
z = c(1,4,3,4,1,4,3,4)
I = condmi(x,y,z) # I(x;y|z)
}
\seealso{
\code{\link{mi}}
}

