# The code below is used to separate two columns in the provided dataset 
### starttime is split into start.date and start.time
### start.date returne a date in the MM/DD/YYYY format
### This dataset is only for January 2015, so the data will be 1/DD/2015
### start.time returns time in the HH:MM format.

# The same functions and order are applied to stoptime to generate stop.date and stop.time

library( dplyr )
library( tidyr )

# Recommend setting your working directory before reading this file in, as it is ~6.5MB
dat <- readRDS(
        gzcon(
          url(
          "https://cdn.rawgit.com/fjsantam/Maxwell-DDM-Final-Project/master/NYC%20Bike%20Share%20Data.rds"
            )
          )
        )
# gzcon is a built-in decompressor that must be run when loading a .RDS straight from a website.
# more info here: https://mgimond.github.io/ES218/Week02b.html


dat <- dat %>% separate( starttime, c("start.date", "start.time"), sep = " " )
dat <- dat %>% separate( stoptime, c("stop.date", "stop.time"), sep = " " )

# Confirm that the  dataframe has the correct new columns
head( dat )

#To write to a CSV, use the code below.
write.csv( dat, "C:/Users/...File Name.csv", row.names = F)
# Put the file path here that you want the .csv to be written to.
# Writing this file to .csv returns a file ~50MB in size, so this action is not recommended.
