Author: Julia Christensen  
Date: April 24, 2018  
Project: Rural Geography  

## Short Description

For this project, I used R to create maps of the United States at a county level. My purpose was to explore whether adequate data exists to analyze individual-level political behavior in rural America. I used data from the CCES, the US Census, and the USDA to explore the degree of variation within rural America and the distribution of CCES responses across counties.  Using R, I created county-level maps for the following: (a) rural population, (b) economic and social measures, and (c) number of CCES respondents. These maps demonstrate how different criteria can produce substancially different rural vs. urban categories. They also suggest that there are fewer than 30 CCES respondents in many counties, particularly in rural areas. Lastly, they suggest that there is substancial variation within rural areas. 


## Dependencies

language:       R  
version.string: R version 3.4.4 (2018-03-15)   
nickname:       Someone to Lean On   


## Files

### Data (Raw)

The following files and folders are stored here: "ps239T-final-project\Data_Geo_Sophistication"  

1. ruralurbancodes2013.csv: Rural-Urban Continuum Codes (RUCC) - nonmetropolitan counties by degree of urbanization and adjacency to a metro area (https://www.ers.usda.gov/data-products/rural-urban-continuum-codes/).  
2. UrbanInfluenceCodes2013.csv: Urban Influence Codes (UIC) - distinguishes nonmetropolitan counties by size of the largest city or town and proximity to metro and micropolitan areas (https://www.ers.usda.gov/data-products/urban-influence-codes.aspx).  
3. ERSCountyTypology2015Edition.csv: County Typology  Codes - six mutually exclusive categories of economic dependence and six overlapping categories of policy-relevant themes (https://www.ers.usda.gov/data-products/county-typology-codes.aspx).  
4. County_Rural_Lookup.csv: Census population data; broken down by county and rural vs. urban (https://www.census.gov/geo/reference/urban-rural.html).
5. state_fips_codes.csv: Maps states to state FIPS codes.  
6. cumulative_2006_2016_sub.Rds: Subset of Cumulative CCES Common Content (2006-2016).  
7. [FOLDER] USDA_Shapefile: File folder containing shape file; R function requires reference to whole folder instead of single file (http://www2.census.gov/geo/tiger/GENZ2010/gz_2010_us_050_00_20m.zip).  



### Data (Generated)

The following files and folders are stored here: "ps239T-final-project\Geo_Project_PS239T\Data_R\"

1. 	cess_all.RData: Saved .R version of the following CCES files: *cces_dat*: Cumulative CCES Common Content (2006-2016)  
2.  cess_cum.RData: Saved .R version of the following CCES files: *cces_dat*: Cumulative CCES Common Content (2006-2016)
3.  census_2016_poverty.RData: copy of data downloaded from census. Allows for data analysis even if API key is missing from script #5.


### Code

1. 00_Install_Libraries.R - Installs packages used in later files.  
2. 01_CCES_Download_Data.R - Opens and saves CCES data as .RData file.  
3. 02_CCES_Map_Frequency.Rmd - Opens CCES data; create maps of CCES respondents by geography.  
4. 03_USDA_Map.Rmd - Opens USDA data; plots the following:
	- Plot Rural-Urban Continuum Codes (RUCC) - nonmetropolitan counties by degree of urbanization and adjacency to a metro area (https://www.ers.usda.gov/data-products/rural-urban-continuum-codes/).  
	- Plot Urban Influence Codes (UIC) - distinguishes nonmetropolitan counties by size of the largest city or town and proximity to metro and micropolitan areas (https://www.ers.usda.gov/data-products/urban-influence-codes.aspx).  
	- Plot County Typology  Codes - six mutually exclusive categories of economic dependence and six overlapping categories of policy-relevant themes
5. 04_Census_Map_Density.Rmd - Opens data from USDA and Census; create maps of poverty data.  
6. 05_Census_Map_Poverty.Rmd - Collects data from Census using API and tidycensus; create maps of poverty data.  


### Results

1.  cces_count_USA.pdf: Map of CCES respondents by county  
	- Note: Subfolder called "CCES_Count_States" contains map of CCES respondents by county for each state  
2.  Census_Poverty_County_2016_ln_poverty_rate_A.pdf: Map of % population in poverty (according to US Census); continuous scale  
3.  Census_Poverty_County_2016_ln_poverty_rate_scale_A.pdf: Map of % population in poverty (according to US Census); logged, continuous scale  
4.  Census_Poverty_County_2016_poverty_rate_A.pdf: Map of % population in poverty (according to US Census); discrete scale  
5.  Census_Poverty_County_2016_poverty_rate_scale_A.pdf: Map of % population in poverty (according to US Census); discrete scale of logged rate  
6.  Census_rural_2010_s_USA_A.pdf: Map of % rural population by state using US Census data; color option A  
7.  Census_rural_2010_s_USA_B.pdf: Map of % rural population by state using US Census data; color option B  
8.  Census_rural_2010_s_USA_D.pdf: Map of % rural population by state using US Census data; color option D  
9.  Census_rural_2010_USA_A.pdf: Map of % rural population by county using US Census data; color option A  
10.  Census_rural_2010_USA_B.pdf: Map of % rural population by county using US Census data; color option B  
11.  Census_rural_2010_USA_D.pdf: Map of % rural population by county using US Census data; color option D  
12.  USDA_EconType_2013_USA.pdf: Map of Econ typology from USDA  
13.  USDA_EconType_Alt1_2013_USA.pdf: Map of Econ typology from USDA; alternative color option 1  
14.  USDA_EconType_Alt2_2013_USA.pdf: Map of Econ typology from USDA; alternative color option 2  
15.  USDA_Low_Edu_2013_USA.pdf: Map of Low education indicator from USDA  
16.  USDA_Low_Employment_2013_USA.pdf: Map of Low employment indicator from USDA  
17.  USDA_Persistant_Child_Poverty_2013_USA.pdf: Map of Persistant Child Poverty indicator from USDA  
18.  USDA_Persistant_Poverty_2013_USA.pdf: Map of Persistant Poverty indicator from USDA   
19.  USDA_Pop_Loss_2010_USA.pdf: Map of population loss indicator from USDA  
20.  USDA_Retirement_Dest_2013_USA.pdf: Map of retirement destination indicator from USDA  
21.  USDA_RUCC_2013_USA_A.pdf: Map of RUCC from USDA; color option A  
22.  USDA_RUCC_2013_USA_B.pdf: Map of RUCC from USDA; color option B
23.  USDA_RUCC_2013_USA_D.pdf: Map of RUCC from USDA; color option D
24.  USDA_UIC_2013_USA_A.pdf: Map of RUCC from USDA; color option A
25.  USDA_UIC_2013_USA_B.pdf: Map of RUCC from USDA; color option B
26.  USDA_UIC_2013_USA_D.pdf: Map of RUCC from USDA; color option D
27.  USDA_UIC6_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with UIC > 5
28.  USDA_UIC7_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with UIC > 6
29.  USDA_UIC8_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with UIC > 7
30.  USDA_UIC9_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with UIC > 8
31.  USDA_URCC4_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with RUCC > 3
32.  USDA_URCC5_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with RUCC > 4
33.  USDA_URCC6_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with RUCC > 5
34.  USDA_URCC7_rural_2010_USA_B.pdf: Map of estimated % rural population by state; defines rural population as people in counties with RUCC > 6
35.  Compare_UIC_v_Census_Rural.pdf: Plot USDA scale (UIC) against Census % rural by county.  
36.  Compare_RUCC_v_Census_Rural.pdf: Plot USDA scale (RUCC) against Census % rural by county.  


## More Information

### API Key:
Script #5 requires a Census API key. Either contact Julia for key or request key using this link:https://api.census.gov/data/key_signup.html.  

### CCES data
Due to github size limitations, I replaced the original download with a subset. I removed two variables with duplicate information (state and cd).  