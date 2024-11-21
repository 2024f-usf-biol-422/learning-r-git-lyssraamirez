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

# Function to subset SNP data set
subset_snp_data <- function(file_path, sample_id ) {

  # Read in csv file
  snp_data <- read.csv(file_path)

  # Subset data for the given sample ID
  subset_data <- snp_data %>% filter(sample == sample_id)

  # Return subset data
  return(subset_data)
}
