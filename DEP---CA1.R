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

df = subset(data, select = c(host_response_time , host_response_rate , host_is_superhost , host_listings_count , latitude , longitude , property_type , room_type , accommodates , bathrooms , bedrooms , beds , bed_type , amenities , price , security_deposit , cleaning_fee , guests_included , extra_people , minimum_nights , maximum_nights , number_of_reviews , review_scores_rating , review_scores_accuracy , review_scores_cleanliness , review_scores_checkin , review_scores_communication , review_scores_location , review_scores_value , instant_bookable , is_business_travel_ready , cancellation_policy))
head(df)
summary(df)