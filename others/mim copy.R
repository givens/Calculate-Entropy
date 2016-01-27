mim <- function(k,data,label) {
	# mutual information maximization
    score = rep(0,length(data))
    for (k in seq_along(data)) {
        score[k] <- mi(data[,k],label)
    }
    score
}
