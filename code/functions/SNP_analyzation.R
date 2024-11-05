### Alyssa Ramirez
### amramirez18@dons.usftca.edu


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

# define the function
subset_snp_data <- function(snp_data, sample_id)

# subset the data to include only data from chosen sample
subset_data <- read.csv("data/sample_snp_data.csv") %>%
  filter(sample == "SRR12433063")


# return the subset data frame
return(subset_data)


# Source the function file
source("code/functions/SNP_analyzation.R")
```

```{r}
# define .csv as data set
snp_data <- "data/sample_snp_data.csv"

# define sample
sample_id <- "SRR12433063"
```


## Project Description

This project is an analysis of the SARS-CoV2 snps."snps" are single nucleotide polymorphisms, which are variations in the DNA sequence of the genome. These variations can be used to track the evolution and spread of the virus. Data found can help deter the spread of the virus and help future pandemics from occuring.

### Project goals and necessary packages

In this project the goal is to correctly analyze gemonic data sets and identify the snps in the data. The packages needed for this project are dplyr, ggplot, and citr. Dplyr [@dplyr]is nessesary for data manipulation, ggplot[@ggplot2] is needed for clean and precise data plots like scatterplots or bargraphs. Devtools [@devtools] is simply good for processing packages and development.

## Subsetting data

