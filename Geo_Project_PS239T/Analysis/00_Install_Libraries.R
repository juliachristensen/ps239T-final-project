### -------------------------------------------------- ###
### ---- General Notes ---- 
### -------------------------------------------------- ###

# PURPOSE OF SCRIPT:
# - Download all packages used in later files. 


### -------------------------------------------------- ###
### ---- Download Libraries ---- 
### -------------------------------------------------- ###


install.packages("pacman")

library(pacman)
p_install(tidyverse, foreign, readstata13, readr, haven, foreign, 
       magrittr, mapproj, ggmap, DeducerSpatial,
       rgdal, RColorBrewer, data.table, tmap, 
       maptools, tmaptools, broom, viridis,
       tidycensus, census, knitr, kableExtra)


