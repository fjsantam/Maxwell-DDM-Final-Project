# The code below is used to separate two columns in the provided dataset 
## starttime is split into start.date and start.time
## start.date returne a date in the MM/DD/YYYY format
## This dataset is only for January 2015, so the data will be 1/DD/2015
## start.time returns time in the HH:MM format.

# The same functions and order are applied to stoptime to generate stop.date and stop.time


dat <- readRDS("C:/Users/franc/Documents/Graduate School/PAI 730 Data-Driven Mgmt/Final Project/NYC Bike Share Data.rds")
dat <- readRDS("https://raw.github.com/fjsantam/Maxwell-DDM-Final-Project/blob/master/NYC%20Bike%20Share%20Data.rds?raw=true")



dat <- dat %>% separate( starttime, c("start.date", "start.time"), sep = " " )
dat <- dat %>% separate( stoptime, c("stop.date", "stop.time"), sep = " " )

#To write to a CSV, use the code below.
write.csv( dat, "C:/Users/...File Name.csv", row.names = F)
# Put the file path here that you want the .csv to be written to.
