install.packages("tidyverse")
library(tidyverse)
library(fs)
library(dplyr)
library(stringr)

dataset <- read.csv(file = "C:/Users/fafam/Downloads/datasetDEP/merged-csv-files.csv")
head(dataset)