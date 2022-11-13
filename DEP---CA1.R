install.packages("tidyverse")
library(tidyverse)
library(fs)
library(dplyr)
library(stringr)
install.packages("tidyimpute")
library(tidyimpute)
install.packages("os")
library(readr)
library(tidytext)

setwd("C:/Users/USER/Downloads/dataset")

path_bases <- "C:/Users/USER/Downloads/dataset"
files_months <- list.files(path_bases, pattern = "*.csv")
print(files_months)
quantities <- length(files_months)
print(quantities)

#
df = NULL
for (k in 1:quantities) {
  
  name = files_months[k]
  print(name)
  Sys.sleep(1) 
  data = read_csv(files_months[k])
  print(data)
  Sys.sleep(1)
  df = rbind(df, data.frame(name,data))
  Sys.sleep(1)
}
summary(df)

