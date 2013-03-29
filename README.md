**bagRboostR**

bagRboostR is an R package consisting of a set of ensemble classifiers for multinomial classification. 

The bagging function is the implementation of Breiman's ensemble as described by Opitz & Maclin (1999). The boosting function is the implementation of Stagewise Additive Modeling using a Multi-class Exponential loss function (SAMME) created by Zhu et al (2006). 

Both bagging and SAMME implementations use randomForest as the weak classifier and expect a character outcome variable.  Each ensemble classifier returns a character vector of predictions for the test set.

**Installation:** 

Via CRAN:

install.packages("bagRboostR")

Via Github:

library(devtools)

install_github("bagRboostR", username="shannonrush")

**Future Features:**

- Additional weak classifiers

- Support for regression
