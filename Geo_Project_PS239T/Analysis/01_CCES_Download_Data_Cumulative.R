### -------------------------------------------------- ###
### ---- General Notes ---- 
### -------------------------------------------------- ###

# PURPOSE OF SCRIPT:
# - Opens individual CCES files. 
# - Saves as objects. 
# - Save RData files with CCES survey data. 


### -------------------------------------------------- ###
### ---- General Set Up ---- 
### -------------------------------------------------- ###

### Clear global environment
rm(list=ls()) 


### Libraries:
library(pacman)
p_load(tidyverse, foreign, readstata13, readr, haven, foreign, magrittr)


### File Locations
file_path_root <- "C:/Users/Julia/OneDrive/Documents/Berkeley/2018_Spring/PS239T_Intro_to_Comp_Tools/ps239T-final-project/"
file_path_proj <- paste0(file_path_root,"Geo_Project_PS239T/")
file_path_dat <- paste0(file_path_root,"Data_Geo_Sophistication/Individual_CCES/") #Note different than other RMarkdown files 

### Path of Original Data (too large to upload)
file_path_dat_CC <- paste0(file_path_dat,"cumulative_2006_2016.rds")

### Path of Subset Data (remove 2 variables to get under github size limit)
file_path_dat_CC_sub <- paste0(file_path_dat,"cumulative_2006_2016.rds")



### -------------------------------------------------- ###
### ---- Download Original Data ---- 
### -------------------------------------------------- ###

# ### Download and subset original data
# cces_dat <- readRDS(paste0(file_path_dat,"cumulative_2006_2016.rds")) %>% 
#   as_tibble() %>%
#   select(-cd, -state) #Remove 2 variables to get under github size limit

# ### Save Subsetted data
# save(cces_dat, 
#      file = file_path_dat_CC_sub)


### -------------------------------------------------- ###
### ---- Download Subset Data ---- 
### -------------------------------------------------- ###

### Load Cumulative CCES File
cces_dat <- load_RData(file_path_dat_CC_sub) %>% as_tibble()

### Save RData file with ONLY Cumulative CCES dataset
save(cces_dat, 
     file = paste0(file_path_proj,"Data_R/cess_cum.RData"))

### Save RData file with all CCES datasets
save(cces_dat, 
     file = paste0(file_path_proj,"Data_R/cess_all.RData"))



### -------------------------------------------------- ###
### ---- Explore Data ---- 
### -------------------------------------------------- ###

### Look at Data
# glimpse(cces_dat)

### Summarise Data
# cces_dat %>% 
#   group_by(county_fips) %>%
#   summarize(count=n()) %>%
#   dplyr::arrange(count) %>% 
#   filter(count==1) %>%
#   summarize(n=n())
# 
# cces_dat %>% 
#   group_by(county_fips) %>%
#   summarize(count=n()) %>%
#   dplyr::arrange(count) %>% 
#   filter(count==1) %>%
#   summarize(n=n())
