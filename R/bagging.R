library(randomForest)

bagging <- function(n,train_set,test_set,ntree=500) {
  m <- matrix(nrow=nrow(test_set),ncol=n)
  for (i in 1:n) {
    model <- ifelse(type %in% types,type,sample(types,1))
    t <- train_set[sample(nrow(train_set), nrow(train_set),replace=T), ]
    fit <- randomForest(activity~.,data=t,ntree=ntree,do.trace=T)      
    m[,i] <- as.character(predict(fit,test_set))
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


