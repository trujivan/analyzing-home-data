# Importing Data
```{r}

library(readr)
home_prices <- read_csv("Documents/R Code/home_prices.csv")

str(home_prices)

summary(home_prices) 

```

# Calculating Stand Div
``` {r}

sdPrice <- sd(home_prices$PRICE)
sdSQFT <- sd(home_prices$SQFT)
sdYEAR <- sd(home_prices$YEAR)
sdBATHS <- sd(home_prices$BATHS)
sdFEATS <- sd(home_prices$FEATS)

``` 

# Creating Tables
``` {r}

FEAT_CORNERS <- table(home_prices$FEATS, home_prices$CORNER)
FEAT_CORNERS
FEAT_BATHS <- table(home_prices$FEATS, home_prices$BATHS)
FEAT_BATHS

``` 

# Creating Data Frames from given data
``` {r}

Temp_DataFr <- data.frame(home_prices$PRICE, home_prices$SQFT, home_prices$BATHS, home_prices$YEAR, home_prices$TAX)

SampleData <- Temp_DataFr[sample(nrow(Temp_DataFr), 30), ]
SampleData

``` 

# Creating Histograms
``` {r}

hist(SampleData$home_prices.PRICE)
hist(SampleData$home_prices.PRICE, breaks = , main = "Histogram Showing Price Distribution",
     xlab = "Prices", col = colors(), ylim=c(0,10))

hist(SampleData$home_prices.TAX)
hist(SampleData$home_prices.TAX, breaks = , main = "Histogram Showing Tax Distribution",
     xlab = "Prices", col = colors(), ylim=c(0,10))

``` 


#Boxplots
``` {r}

par(mfrow=c(2,2))

boxplot(SampleData$home_prices.PRICE,
        main = "Boxplot Showing Price Distribution",
        xlab = "Prices",
        col = "orange",
        horizontal = TRUE,
        notch = FALSE
)

boxplot(SampleData$home_prices.TAX,
        main = "Boxplot Showing Price Distribution",
        xlab = "Tax",
        col = "blue",
        horizontal = TRUE,
        notch = FALSE
)

```

# qqplot

```{r}

par(mfrow=c(2,2))
qqnorm(SampleData$home_prices.PRICE, pch = 1, col = "pink", frame = FALSE)
qqline(SampleData$home_prices.PRICE, col = "purple", lwd = 2)

qqnorm(SampleData$home_prices.TAX, pch =1, col = "green", frame = FALSE)
qqline(SampleData$home_prices.TAX, col = "blue", lwd = 2)

```

# Getting boxplot stats
```{r}

boxplot.stats(SampleData$home_prices.PRICE, coef = 1.5, do.conf = TRUE, do.out = TRUE)
boxplot.stats(SampleData$home_prices.TAX, coef = 1.5, do.conf = TRUE, do.out = TRUE)

```

```{r}

x <- SampleData$home_prices.PRICE
y <- SampleData$home_prices.TAX
cor(x, y)

```
