###Alyssa Ramirez
###amramirez18@dons.usftca.edu
###10/24/24

# subset_snp_data.R
# This script defines a function to subset a SNP dataset by a given sample ID. ChatGPT was used as a guide.
# The function takes two arguments:
#   - file_path: A string with the path/name of the SNP data set CSV file.
#   - sample_id: A string with the sample ID to subset by.
# The function returns a data frame containing only rows for the specified sample ID.


#load packages
library(dplyr)
library(lintr)
lint("data/sample_snp_data.csv")

#Define .csv
subset_snp_data <- ("sample_snp_data copy.csv")

#Define sample_ID being used for assignment, pulled from the data defined
sample_ID <- ("SRR12433063")







