---
title       : Prediction on MPG 
subtitle    : 
author      : Pattareeya
job         : Data Scientist
framework   : revealjs      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

# Prediction on MPG 


---
## Would it be nice to be able to predict the MPG based on several variables?
Base on the dataset **mtcars** which was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

The **mtcars** dataset contains mpg and 10 variables which are

```
##  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
## [11] "carb"
```

---

## The Better model
We have created the better model:



```
## 
## Call:
## lm(formula = mpg ~ cyl + hp + wt + am, data = mtcars)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -3.939 -1.256 -0.401  1.125  5.051 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  33.7083     2.6049   12.94  7.7e-13 ***
## cyl6         -3.0313     1.4073   -2.15   0.0407 *  
## cyl8         -2.1637     2.2843   -0.95   0.3523    
## hp           -0.0321     0.0137   -2.35   0.0269 *  
## wt           -2.4968     0.8856   -2.82   0.0091 ** 
## amManual      1.8092     1.3963    1.30   0.2065    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.41 on 26 degrees of freedom
## Multiple R-squared:  0.866,	Adjusted R-squared:  0.84 
## F-statistic: 33.6 on 5 and 26 DF,  p-value: 1.51e-10
```
where we only need fewer variables which are *cyl*, *hp*, *wt* and *am* for the prediction.

---

## Determine how good our model is

- The R-squared of the model where we include all predictors is 0.8931 
- The R-squared of our better model is 0.8659
- The diffence is only 0.0272

---

### With almost the same accuracy but the fewer variables, we have created the better  MPG prediction model.

You now can predict the MPG with the lesser variable.  If you are interested, please visit our [app](https://pattareeya.shinyapps.io/project) page.


