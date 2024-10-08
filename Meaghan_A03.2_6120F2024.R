## SCRIPT HEADER ----

# Script name: PSYC 6120 Assignment A03.2 
# Author: Meaghan Hall 
# Date: 2024-10-06 

#* Assignment description: A03.2. Demonstrate that you can use {osfr} to interface with OSF using R. 
#* Create a script that explores a public OSF project (it need not be yours, but it could be), 
#* and downloads a file. [2 Marks]

# ____________

## Clean the environment by restarting your R session (i.e., Command + Shift + 0) 
# If any objects remain in the global environment, clear them all.

# ____________

## Set working directory
# setwd("~/Desktop/York/Classes/PhD3/PSYC 6120/Assignments/Meaghan_A03_6120F2024")

# ____________

## Load packages 

# install.packages("groundhog") 
library ("groundhog")

packages <- c("dplyr", "tidyverse", "psych", "lavaan", "nlme", "ggplot2", "ggpubr", "readxl", "writexl", "osfr")
# Adding the 'osfr' package for the purpose of this assignment.
groundhog.library(packages, "2024-10-04")


## Retrieve OSF project and load it into R ----

#* The public OSF project that I have chosen to explore is titled "The carbon footprint of travelling
#* to conferences of the European Health Psychology Society" (url: https://osf.io/fyu5x/). The global
#* unique identifier (GUID) for this OSF project is 'fyu5x' (which is embedded in the url).

# Use the 'osfr_retrieve_node()' function to retrieve and load the project by its GUID (i.e., fyu5x) and
# store it with the name 'carbonfoot':
carbonfoot <- osf_retrieve_node("fyu5x")

carbonfoot
#* I can see that 'carbonfoot' is stored as a tibble with one row and three columns. The three column 
#* variables are: "name" (of OSF the project), which is a character variable; "id" (i.e., the GUID), which
#* is also a character variable; and "meta"(documentation), which is a list.


## Explore and open files contained within OSF project ----

#* I want to see all the files and directories that have been uploaded to the 'carbon footprint' 
#* OSF project. I can do so using the 'osf_ls_files()' function.
osf_ls_files(carbonfoot)

#* From the tibble that is returned, I can see that there are 2 files contained within this OSF project.
#* One is an excel (xlsx) file and the second is a pdf file. Information on the file name (character 
#* variable), id (character variable), and meta documentation (list variable) is provided here as well. 
#* I can take a look at both files directly in OSF using the 'osf_open()' function.

osf_open(carbonfoot)
#* This takes me to the overview page for the project in OSF. I can see that there are in fact only two 
#* files stored within this OSF project, which aligns with the results obtained above. Next, I want to
#* open the project contents (i.e,files) specifically.

#* I used Chat GPT for guidance on how to open specific files within an OSF project (prompt entered: 
#* how to open an OSF project file using osf_open in r).

#* First, I need to store the 2 project files in a new variable, that I will call "carbonfoot_files."
carbonfoot_files <- osf_ls_files(carbonfoot)
carbonfoot_files

#* I can see that the files have been pulled out and stored correctly.

#* Next, I need to pull out and store each file separately:

# File 1:
file_1 <- carbonfoot_files[carbonfoot_files$name == "Supplement2_EHPS_online_emissions_according_to_Faber_2021.xlsx", ]
#* In this code, 'carbonfoot_files[]' is used to index into the 'carbonfoot_files dataframe. The 
#* 'carbonfoot_files$name ==' is used to call and pull out the first file from the 'carbonfoot_files' 
#* dataframe by its name (i.e., Supplement2_EHPS_online_emissions_according_to_Faber_2021.xlsx). 
#* This is saved as a tibble called 'file_1.'

file_1
#* I can see that this tibble has one row and three columns. The three column variables are: "name" 
#* (of the OSF project file), which is a character variable; "id" (associated with the file), which
#* is also a character variable; and "meta"(documentation), which is a list.

# File 2:
file_2 <- carbonfoot_files[carbonfoot_files$name == "Supplement 1_The Carbon Footprint of Travelling to conferences of the EHPS.pdf", ]
#* In this code, 'carbonfoot_files[]' is used to index into the 'carbonfoot_files dataframe. The 
#* 'carbonfoot_files$name ==' is used to call and pull out the second file from the 'carbonfoot_files' 
#* dataframe by its name (i.e., Supplement 1_The Carbon Footprint of Travelling to conferences of 
#* the EHPS.pdf). This is saved as a tibble called 'file_2.'

file_2
#* I can see that this tibble has one row and three columns. The three column variables are: "name" 
#* (of the OSF project file), which is a character variable; "id" (associated with the file), which
#* is also a character variable; and "meta"(documentation), which is a list.

#* Now I can open both OSF project files in my browser using 'osf_open()':

# File 1:
osf_open(file_1)
#* Now, I can explore this file directly in OSF. I see that it is a supplemental excel spreadsheet with four
#* worksheets (i.e., tabs). There appears to be a lot of empty cells, and many columns are missing names. 
#* It will be helpful to download the file to explore it further. I will do this next.

# File 2:
osf_open(file_2)
#* Now, I can explore this file directly in OSF. I see that it is a pdf with 5 pages of supplemental methods,
#* tables, and references. It will be helpful to download the file to explore it further. I will do this next.

# By running the code below, I can double check that the 'carbon footprint' OSF project does not contain
# any components. They would have shown up when we ran the carbonfoot_files() function previously.
osf_ls_nodes(carbonfoot)
# A tibble with 0 rows is returned, indicating that the OSF project does not contain any components.


## Download files contained within OSF project ----

#* Lastly, I want to download local copies of both project files using the 'osf_download()' function. 
#* Similar to osf_open, I just need to enter the name of the file that I want to download from OSF.

# File 1:
osf_download(file_1)

# File 2:
osf_download(file_2)

#* Both file copies were downloaded and saved within my R Project. Exploring these files, I can see that
#* there is much more data in file 1 (i.e., Supplement 2) than I could see in the preview on OSF. This excel
#* spreadsheet contains the information for how emissions can be estimated for running a virtual conference,
#* at various numbers of hours per day (i.e., if a virtual conference runs for 8 hours a day or 2-3, etc.). 
#* The methods appear to be based on a previously published paper by Faber,G (2021). 

#* File 2 (i.e, Supplement 1) contains the supplemental material (i.e., methods, references, tables) to 
#* accompany the publication associated with this OSF project (which appears to be under review). 
#* Specifically, it includes information pertaining to how CO2 emissions were estimated for each 
#* participant attending the last three European Health Psychology Society conferences, by conference 
#* location.

#* Without seeing the publication itself, it is hard to make sense of these two supplemental files (e.g.,
#* why are there supplemental methods for estimating virtual conference emissions? Were these conferences
#* hybrid?).

