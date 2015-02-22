My very first very shiny App
========================================================
author: Victor Salit
date: 22 Feb 2015

Introduction
========================================================

This application allows a user to choose his or her 
favorite transmission type and get a plot of 
the fuel consumption as a function of a car weight 
for a chosen transmission. 


Data
========================================================
The data is based on the 'mtcars' dataset from the 
R datasets library

```r
library(datasets)
head(mtcars[,c('mpg','wt','am')])
```

```
                   mpg    wt am
Mazda RX4         21.0 2.620  1
Mazda RX4 Wag     21.0 2.875  1
Datsun 710        22.8 2.320  1
Hornet 4 Drive    21.4 3.215  0
Hornet Sportabout 18.7 3.440  0
Valiant           18.1 3.460  0
```

Processing
========================================================
for easier handling the dataset is split in two 
subsets, based on the transmission type

```
                   mpg    wt transmission
Hornet 4 Drive    21.4 3.215    Automatic
Hornet Sportabout 18.7 3.440    Automatic
Valiant           18.1 3.460    Automatic
Duster 360        14.3 3.570    Automatic
Merc 240D         24.4 3.190    Automatic
```

```
               mpg    wt transmission
Mazda RX4     21.0 2.620       Manual
Mazda RX4 Wag 21.0 2.875       Manual
Datsun 710    22.8 2.320       Manual
Fiat 128      32.4 2.200       Manual
Honda Civic   30.4 1.615       Manual
```

Link to the App
========================================================
The App can be found at
http://victorsalit.shinyapps.io/MyShinyApp

Enjoy!
