# Mutual Information Maximization
mim <- function(xk,label,theta=NULL) {
    mi(xk,label)
}

# Joint Mutual Information
jmi <- function(xk,label,theta) {
    tot = 0
    for (i in seq_along(theta)) {
        tot = tot +
            h(xk,theta[i])+h(label)-h(xk,theta[i],label)
    }
}

# Conditional Mutual Information Maximization
cmim <- function(xk,label,theta) {
    minval = Inf
    for (i in seq_along(theta)) {
        minval = min(minval,
                     condmi(xk,label,theta[i]))
    }
}

# Double Input Symmetrical Relevance
disr <- function(xk,label,theta) {
    tot=0
    for (i in seq_along(theta)) {
        denom = h(xk,labe,theta[i])
        tot = (h(xk,theta[i])+h(label)-denom)/denom
    }

}

# # Mutual Information Maximization
# mim <- function(num,data,label) {
#     score = sapply(mi,data,y=label)
#     brk = sort(score,decreasing=T)[num]
#     which(score>=brk)
# }
#
# # use sapply
