## Expose prediction model as web service

## startup: load library and read model

library(rjson)
library(dplyr)
library(caret)
library(keras)

setwd("PathTo/DataScienceProject_2020")

load("variables.rda")
keras_model <- load_model_tf("model/")

decode <- function(s)
{
    input_data <- as.data.frame(fromJSON(s$postBody)) %>%
		mutate(City = factor(City, levels = levels_city)) %>% 
		mutate(Price_Range = factor(Price_Range, levels = levels_price_range)) %>%
		mutate(Rating = factor(Rating, levels = levels_rating)) %>%
		mutate(Ranking = 0)
}

scaleAndBcode <- function(s)
{
	scaled <- try(predict(pp, s))
	data_bcoded_City = matrix(to_categorical(as.integer(scaled$City) - 1, num_classes = length(levels_city)), nrow=nrow(s))
	data_bcoded_Rating = matrix(to_categorical(as.integer(scaled$Rating) - 1, num_classes = length(levels_rating)), nrow=nrow(s))
	data_bcoded_Price_Range = matrix(to_categorical(as.integer(scaled$Price_Range) - 1, num_classes = length(levels_price_range)), nrow = nrow(s))

	data_bound = cbind(
		data_bcoded_City,
		data_bcoded_Rating,
		data_bcoded_Price_Range,
		scaled$Review_Count
	)
}

#* @post /keras
#* @json
function(req)
{
	data_frame <- decode(req)
	data_bounded <- scaleAndBcode(data_frame)
	rating_scaled <- try(predict(keras_model, data_bounded))
	as.character(unPreProc(pp, rating_scaled))
}
