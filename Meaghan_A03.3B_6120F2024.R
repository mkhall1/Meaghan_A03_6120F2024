## SCRIPT HEADER ----

# Script name: PSYC 6120 Assignment A03.3B 
# Author: Meaghan Hall 
# Date: 2024-10-06 

#* Assignment description: A03.3B. Sign up for GitHub and demonstrate that you can successfully interface
#* with it using R. [1 Bonus Mark]

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

packages <- c("dplyr", "tidyverse", "psych", "lavaan", "nlme", "ggplot2", "ggpubr", "readxl", "writexl", "usethis")
# Adding the 'usethis' package for the purpose of this assignment.
groundhog.library(packages, "2024-10-04")


## Download Git for Mac ----

#* Download Git for Mac at the following link: https://git-scm.com/downloads/mac
#* Click on the 'installer' hyperlink under the 'Binary Installer' header. This will open a new page - click
#* download and install Git as you would any other application.
#* If you are using a Mac, you may need get this warning message: "“git-2.15.0-intel-universal-mavericks.pkg”
#* cannot be opened because it is from an unidentified developer."
#* To get around this, got to Privacy & Security settings in System Preferences. You will see a Security
#* section with a prompt that says 'Allow applications downloaded from - App Store and identified developers"
#* The git package will be listed there; click on Open Anyway.
#* If you have a windows, you will need to follow the download instructions for that.

#* Once you have successfully installed Git, you need to confirm it is installed correctly.
#* Click on the 'terminal' tab in the bottom left pane. Enter "git --version"
#* I have git version 2.15.0


## Configure Git ----

#* I want to tell Git who I am (i.e., my name and email address). This only has to be done once per user.
#* I do this using the use_git_config() function. The user.name specifier allows me to enter my name; and
#* user.email allows me to specify my email address.

use_git_config(user.name = "Meaghan H", user.email = "meaghan.h@hotmail.com")
# Nothing will noticeably happen when I run this code, but behind the scenes it will have changed the
# git config file so that Git knows my name and email.


