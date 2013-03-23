\name{samme}
\alias{samme}

\title{Ensemble boosting classifier for multinomial classification}
\description{
  Makes multiple predictions on the test set using samples chosen from the data set based on past performance. Uses randomForest as the weak classifier and expects a multinomial character outcome variable.  Makes a final prediction on the test set based on votes by the classifiers weighted by performance. Implementation of Zhu et al.'s Stagewise Additive Modeling using a Multi-class Exponential loss function (2006).
}
\usage{
samme(formula, data, test, m = 5, trace = T, ntree = 500, mtry = NULL)
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
  \item{trace}{
  Setting for randomForest do.trace.  Defaults to TRUE.
}
  \item{ntree}{
  Number of trees for each randomForest to grow.  Defaults to 500.
}
  \item{mtry}{
  Number of variables randomForest randomly samples as candidates at each split. Defaults to the square root of the number of variables in data. 
}
}

\value{
  Character vector consisting of a final prediction for each test set sample.
}
\references{
  Zhu, J., Rosset, S., Zou, H. and Hastie, T. (2005). Multiclass AdaBoost. Technical report, Stanford Univ.
  \url{http://www.stanford.edu/~hastie/Papers/samme.pdf}
}
\author{
  Shannon Rush \email{shannonmrush@gmail.com}
}

\seealso{
  \code{\link{randomForest}}
}

