#* A03.1. Write a header for all future R scripts, that ensures a clean environment, uses {groundhog}
#* to load the packages you routinely use, and includes any other information that will help ensure
#* good project management (e.g., name of study, author of script). [1 Mark]


## HEADER TEMPLATE #### (created a header section here to keep all components of the script header together)
# ______________________________________________________________________________

# Script name: (name of study or assignment)

# Author: (name of the author who created the R script)

# Date: (date the script was created; YYYY-MM-DD)

# Script description: (study topic or purpose, assignment question, etc.)

# ______________________________________________________________________________

## Clean the environment by restarting your R session (i.e., Command + Shift + 0) 

#* It is a good idea to start with a clean slate, by restarting your R session to clear the environment.
#* The keyboard shortcut for this on a Mac is Command + Shift + 0.
#* On a windows, use Ctrl + Shift + F10.

#* If any objects have been saved to your global environment from previous R sessions, you will need to
#* clear them all by pressing the 'broomstick' icon.

# ______________________________________________________________________________

## Set working directory

# setwd("~/Desktop/York/Classes/PhD3/PSYC 6120/Assignments/Meaghan_A03_6120F2024")

#* Ensure that your working directory is set to the correct project or assignment folder using the code
#* above. It is best to comment this line of code out, particularly when sharing scripts with others, as
#* their working directory paths will differ from your own. To avoid this issue, it is ideal to use an R
#* Project (as I did here) to contain all relevant files in one place, that can be easily accessed by all.

# ______________________________________________________________________________

## Load packages 

# install.packages("groundhog") 
#* It is important to comment out install.packages() when sharing scripts to prevent packages from being
#* automatically updated or downloaded on the other person's computer.

library ("groundhog")

#* The groundhog.library() function from the groundhog package allows you to load all required packages
#* and their dependencies from a specific date on CRAN. This date should be set to two days prior
#* to the current date (in YYY-MM-DD format). There is no need to install the packages first, as they are
#* automatically installed when needed. Groundhog is a great way to load the required packages for running
#* your script in a way that is reproducible for anyone using the script. This is because the same version 
#* of each package will be loaded regardless of the R version or operating system being used.

packages <- c("dplyr", "tidyverse", "psych", "lavaan", "nlme", "ggplot2", "ggpubr", "readxl", "writexl")
# Storing the packages I commonly use in a character variable called 'packages' using the combine specifier ('c()').

groundhog.library(packages, "2024-10-04")
#* This line of code allows me to load all commonly used packages stored in 'packages.' The versions used
#* will be those available on October 6, 2024.

#* You will be asked to provide groundhog with authorization to save files to the groundhog folder in your R
#* library (enter 'OK' to authorize). You may get a warning message indicating the following: 

# IMPORTANT.
#       R does not have a personal library to save packages to. The default 
#       location for it is: '/Users/meaghanhall/Library/R/arm64/4.4/library'. 
#       
  #          1) Type 'create' to create that directory 
  #          2) Otherwise type 'stop' 

# Follow option 1 to creat that directory. Once you create that directory, you will be prompted to 
# restart your R session and re-run 'groundhog.library() to load them.

# ______________________________________________________________________________

## Set the seed (optional)

# set.seed()

#* If you will be running code that relies on the random generation of numbers to obtain your results, 
#* it will be critical to set the seed for reproducibility (i.e., to ensure that the exact same output is
#* obtained every time the code is run). To use this code, plug a random series of digits into 'set.seed()'
#* (e.g., set.seed(123)).

# ______________________________________________________________________________


#* Below is what my header template will look like without the embedded comments, using this assignment as
#* an example.


## FINAL HEADER TEMPLATE ####
#_____________

# Script name: PSYC 6120 Assignment A03.1 
# Author: Meaghan Hall 
# Date: 2024-10-06 

# Assignment description: A03.1. Write a header for all future R scripts, that ensures a clean environment, 
#* uses {groundhog} to load the packages you routinely use, and includes any other information that will
#* help ensure good project management (e.g., name of study, author of script). [1 Mark]

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

packages <- c("dplyr", "tidyverse", "psych", "lavaan", "nlme", "ggplot2", "ggpubr", "readxl", "writexl")
groundhog.library(packages, "2024-10-04")

# ____________

## Set the seed (optional)

# set.seed()

