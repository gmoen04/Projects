#####################
# load libraries
# set wd
# clear global .envir
#####################

# remove objects
rm(list=ls())
# detach all libraries
detachAllPackages <- function() {
  basic.packages <- c("package:stats", "package:graphics", "package:grDevices", "package:utils", "package:datasets", "package:methods", "package:base")
  package.list <- search()[ifelse(unlist(gregexpr("package:", search()))==1, TRUE, FALSE)]
  package.list <- setdiff(package.list, basic.packages)
  if (length(package.list)>0)  for (package in package.list) detach(package,  character.only=TRUE)
}
detachAllPackages()

# load libraries
pkgTest <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[,  "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg,  dependencies = TRUE)
  sapply(pkg,  require,  character.only = TRUE)
}

# load any necessary packages
# ex: stringr
# lapply(c("stringr"),  pkgTest)

lapply(c("stargazer", "stringr", "tidyverse", "ggplot2", "nnet", "pscl", "AER"),  pkgTest)

# set wd for current folder
setwd("/Users/garethmoen/Documents/PG Dip - ASDS/Stats II/MyProblemSets/PS3/my_answers")

#### 1. Unordered multinomial logit ####

# load data
gdp <- read.csv("gdpChange.csv")

# View data structure
summary(gdp)
str(gdp)

# Convert values to character strings
gdp2 <- gdp 
gdp2$GDPWdiff2 <- gdp$GDPWdiff
  
gdp2$GDPWdiff2[gdp2$GDPWdiff == 0] <- "no change"
gdp2$GDPWdiff2[gdp2$GDPWdiff < 0] <- "negative"
gdp2$GDPWdiff2[gdp2$GDPWdiff > 0] <- "positive"

# Remove order from factors
#gdp2$GDPWdiff2 <- factor(gdp2$GDPWdiff2, ordered = FALSE)

# Set reference level for factors
gdp2$GDPWdiff2 <- relevel(as.factor(gdp2$GDPWdiff2), ref = "no change")

# Remove additional column data
gdp2 <- subset(gdp2, select = c(REG, OIL, GDPWdiff2))

summary(gdp2)
str(gdp2)

# Unordered multinomial logit
multinom_1 <- multinom(GDPWdiff2 ~ REG + OIL, data = gdp2)

# Getting multinom_1 information, including coefficients
multinom_1

# Specifically coefficients
coef_1 <- exp(coef(multinom_1))

# Cutoff points
confint_exp_m1 <- exp(confint(multinom_1))

# Interpretation of coefficients and cutoff points

# So in any particular country, there is a 5.865 times increase in the baseline
# odds that there will be positive GDP growth if that country is a democracy. 

# The 95% confidence intervals for this 5.865 value are 1.304 & 26.373