library(randomForest)

bagging <- function(formula,m,data,test,ntree=500,mtry=NULL,trace=T) {
  outcome.label <- outcomeLabel(formula)
  mtry <- ifelse(is.null(mtry),floor(sqrt(ncol(data))),mtry)
  C <- matrix(nrow=nrow(test),ncol=m)
  n <- nrow(data)
  for (i in 1:m) {
    t <- data[sample(n, n, replace=T), ]
    t[,outcome.label]<-droplevels(t[,outcome.label]) # in case any outcomes are not sampled
    fit <- randomForest(formula,data=t,ntree=ntree,do.trace=trace)      
    C[,i] <- as.character(predict(fit,test))
  }
  apply(m,1,mostOccurring)
}

mostOccurring <- function(sample) {
  most <- namesMost(v)
  ifelse(length(most)==1,most,sample(most,1))
}

numMost <- function(sample) {
  sum(sample==names(which.max(table(sample))))
}

namesMost <- function(sample) {
  names(which(table(sample)==numMost(sample)))
}

outcomeLabel <- function(formula) {
  toString(formula[[2]])
}


