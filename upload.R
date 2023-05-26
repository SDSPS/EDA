#DATA EXPLORATION of Bike Rental data set
#load needed Libraries
library(tidyverse) 
library(rlang) 
library(moments)  # ... for Skewness
library(ggplot2)  # ... for Graphics
library(pROC)     # ... for ROC
library(Matrix)   # ... for matrix operations
library(car)      # ... for ellipse plots
library(stats)    # ... for statistical operations
library(MASS)     # ... for Multivariate Normal Distribution
library(graphics) # ... for arrows
library(moments)  # ... for Skewness
library(nnet)     # ... for neural network modeling
library(magrittr) # ... needs to be run every time you start R and want to use %>%
library(dplyr)    # ... alternatively, this also loads %>%
library(PerformanceAnalytics) # ... for financial performance and risk analysis
library(tidyverse)# ... for data manipulation and visualization
library(dlookr)   # ... for exploratory data analysis and data cleaning
library(corrplot) # ... for visualizing correlation matrices
#Load Data
Bike_Sharing <- read.csv("~/SCRIPTING FILES/Data Sets/Bike/Bike Sharing Dataset.csv")

View(Bike_Sharing)
df=data.frame(Bike_Sharing)
summary(df)
str(df)

#The following is a list of the EDA functions included in the dlookr package.:


##provides descriptive statistics for numerical data.
describe(Bike_Sharing) 
normality(Bike_Sharing) 

##perform normalization and visualization of numerical data.
plot_normality(Bike_Sharing) 
bshare<-correlate(Bike_Sharing) 

##calculate the correlation coefficient between two numerical data and provide visualization.
plot.correlate(bshare) 
plot_correlate(bshare)
M = cor(bshare)
corrplot(M, method = 'number') # colorful number

##defines the target variable 
target_by(bshare) 

#describes the relationship with the variables of interest corresponding to the target variable.
relate(bshare) 

##visualizes the relationship to the variable of interest corresponding to the destination variable.
plot.relate(Bike_Sharing) 

##performs an exploratory data analysis and reports the results.
eda_web_report(Bike_Sharing) 
eda_paged_report(Bike_Sharing)
