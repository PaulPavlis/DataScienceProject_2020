library(plumber)
setwd("PathTo/DataScienceProject_2020")
ws = plumb("server_config.R")
ws$run(host="127.0.0.1", port = 8080)
