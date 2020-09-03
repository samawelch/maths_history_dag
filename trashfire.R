require(visNetwork, quietly = TRUE)
library(readr)


path_to_images <- "C:\Users\burne\OneDrive - NIVA\Projects\maths_history_dag\Image"

people_data <- read_csv(file = "Data/dummy_people.csv")
edges <- read_csv(file = "Data/edges.csv")

# people_data <- data.frame(shape = c("circularImage"),
#                     image = paste0(path_to_images, id, ".png"),
#                     label = Name)

visNetwork(people_data, edges, width = "100%") %>% 
  visNodes(shape = "circularImage",
           image = "selected") 