
# ewd -- equal width discretization
# efd -- equal frequency discretization
# emd -- entropy minimization discretization
# fld -- fuzzy learning discretization
# iid -- iterative-improvement discretization
# ld -- lazy discretization
# pkid -- proportional k-inteval discretization
# equal size discretization
discretize <- function(x,nbins,method=c("ewd","efd")) {
	# discretize continuous features
    method = match.arg(method)
    if (method=="ewd") breaks = nbins
    if (method=="efd") {
        probs = seq(0,1,length=nbins+1)
        breaks = quantile(x,probs)
    }
    cut(x,breaks=breaks,
        include.lowest=T,
        labels=F)
}
