library(data.table)
library(RPostgreSQL)
library(dplyr)
library(plyr)
library(stringr)
library(zoo)
library(lubridate)
library(stringi)
library(tools)
library(lubridate)


#Add a file combine section from the cleaner and save it in the reard data frame
#<-
dirIn  <-("C:/Users/OddoyeG/OneDrive - Informa plc/Documents/Flat Files/Auction/Non RB Auction/2021/2021_06/Clean_v2/")
file_list <- paste0(dirIn, list.files(path = dirIn))
reard <- rbindlist(lapply(file_list, fread, header=TRUE, sep =","),fill=T)