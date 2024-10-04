#Alyssa Ramirez
#amramirez18@dons.usfca.edu

#load packages
library(dplyr)
library(lintr)

#path
snp_path <- "data/sample_snp_data.csv"

#apply filter by snp_path,ssample from sample_snp_data.csv file of a single row
subset_snp_by_sample_id <- function(snp_path,ssample){
  snp_data <- read.csv(snp_path)
  snp_data %>%
    filter(ssample == "
SRR12433063")
}
#return filtered data set
return(subset_snp_by_sample_id(snp_path,"SRR12433063"))



