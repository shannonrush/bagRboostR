\name{bagging}
\alias{bagging}

\title{Ensemble bagging classifier for multinomial classification}

\description{
Makes multiple predictions on test set using resampled variations of data set.  Uses randomForest as the weak classifier and expects a multinomial character outcome variable.  Returns a final test set prediction with each forest having an equal vote.  Implementation of Breiman's ensemble bagging classifier as described by Obitz & Maclin (1999).
}

\usage{
bagging(formula, data, test, m = 5, ntree = 500, mtry = NULL, trace = T)
}

\arguments{
  \item{formula}{
  A formula expression for the classifier model. Expects the form outcome ~ predictors with a single outcome variable.  The outcome variable is expected to be of type character.
}
  \item{data}{
  A data frame consisting of the training data set.  Must include all variables described in the formula including the outcome variable.
}
  \item{test}{
  A data frame consisting of the test set to be predicted. Must include all predictor variables. May include outcome variable. 
}
  \item{m}{
  Number of classifiers to vote on final prediction.  Defaults to 5.
}
  \item{ntree}{
  Number of trees for each randomForest to grow.  Defaults to 500.
}
  \item{mtry}{
  Number of variables randomForest randomly samples as candidates at each split. Defaults to the square root of the number of variables in data. 
}
  \item{trace}{
  Setting for randomForest do.trace.  Defaults to TRUE.
}
}

\value{
  Character vector consisting of a final prediction for each test set sample.
}
\references{
  Breiman, L. (1996) "Bagging Predictors", Machine Learning, 26, 123-140.
  
  Opitz, D. and Maclin, R. (1999) "Popular Ensemble Methods: An Empirical Study", Journal of 
Artificial Intelligence Research, 11, 169-198. 
  \url{http://www.d.umn.edu/~rmaclin/publications/opitz-jair99.pdf}
}
\author{
  Shannon Rush \email{shannonmrush@gmail.com}
}

\seealso{
  \code{\link{randomForest}}
}
