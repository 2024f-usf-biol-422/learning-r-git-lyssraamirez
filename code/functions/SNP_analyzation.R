# Alyssa Ramirez
# amramirez18@dons.usfLINTca.edu


# subset_snp_data.R
# This script defines a function to subset a SNP dataset by a given sample ID.
# ChatGPT was used as a guide.
# The function takes two arguments:
#   - file_path: A string with the path/name of the SNP data set CSV file.
#   - sample_id: A string with the sample ID to subset by.
# The function returns a data frame containing only rows for the specified
# sample ID.


# load packages
library(dplyr)
library(ggplot2)

# Define paths

snp_file <- "data/sample_snp_data.csv"
sample_ID <- "SRR12433063"

# define the function
subset_snp_data <- function(snp_file, sample_ID)

# subset the data to include only data from chosen sample
subset_data <- read.csv("data/sample_snp_data.csv") %>%
  filter(sample == "SRR12433063")









