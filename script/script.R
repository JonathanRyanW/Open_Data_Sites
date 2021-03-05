#Reading the data. The header is false as there wasn't any header in the data
data <- read.csv("./data/opendatasites91819.csv", header = FALSE)
#

#Changing the variable name
library(dplyr)
data <- rename(data, "Name" = V1, "URL" = V2, "Type of Region" = V3)

#A function to get the URL given the name of the place
url <- function(place){ #place is a character string
  if (sum(data$Name == place) == 0) {
    print("There is no such place in the data. Please type the name correctly, starting with a capital letter, and with quotes")
  } else {
    return(data[data$Name == place, 2])}
}

#A function to get the region type given the name of the place
region <- function(place){ #place is a character string
  if (sum(data$Name == place) == 0) {
    print("There is no such place in the data. Please type the name correctly, starting with a capital letter, and with quotes")
  } else {
    return(data[data$Name == place, 3])}
}