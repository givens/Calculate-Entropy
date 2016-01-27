source('prob.R')
source('marginalize.R')
source('entropy.R')

# I(x;y) = H(x)+H(y)-H(x,y)
mi2 <- function(...,margin=1) {
    # The information shared by two distributions
    p <- prob(...)
    entropy(marginalize(p,margin)) +
        entropy(marginalize(p,-margin)) -
        entropy(p)
}
