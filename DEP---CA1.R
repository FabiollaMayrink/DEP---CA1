install.packages("tidyverse")
library(tidyverse)
library(fs)
library(dplyr)
library(stringr)
install.packages("tidyimpute")
library(tidyimpute)

dataset <- read.csv(file = "C:/Users/fafam/Downloads/datasetDEP/merged-csv-files.csv")
head(dataset)

df = subset(dataset, select = c(host_response_time , host_response_rate , host_is_superhost , host_listings_count , latitude , longitude , property_type , room_type , accommodates , bathrooms , bedrooms , beds , bed_type , amenities , price , security_deposit , cleaning_fee , guests_included , extra_people , minimum_nights , maximum_nights , number_of_reviews , review_scores_rating , review_scores_accuracy , review_scores_cleanliness , review_scores_checkin , review_scores_communication , review_scores_location , review_scores_value , instant_bookable , is_business_travel_ready , cancellation_policy))
head(df)
summary(df)

#esse caralho nao deu certo
#mode(df$host_response_time)
#mode(df$host_response_time, na.rm = TRUE)

#summary(head(host_response_time))