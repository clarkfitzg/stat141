library(tidyverse)

data(ames, package = "modeldata")

ames2 <- ames[, c("Sale_Price", "Gr_Liv_Area", "Year_Built", "Year_Sold", "Neighborhood", "Bedroom_AbvGr", "Full_Bath")]
ames2 <- filter(ames2, Neighborhood %in% c("College_Creek", "Old_Town"))

write_csv(ames2, "C:/Users/fitzgerald/class/stat141/data/ames2.csv")
