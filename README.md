# Alyssa Ramirez
# December 11,2024
# SNP Data Analysis Report README.md

### Project Overview
---
This project analyzes SNP (Single Nucleotide Polymorphism) data using a dynamic
and reproducible  in R. The report is generated using RMarkdown and includes 
custom functions, visualizations, and exported data. The  is designed to 
dynamically update for different sample IDs, making it easy to repeat analyses
for various samples.

### Project structure
---
├── data/                  # Input directory for the SNP dataset (CSV file).
├── code/                  
│   ├── functions/         # R script for reusable functions.
│   └── (additional scripts if needed)
├── output/                # Output directory for subset data and plots.
├── Report.Rmd             # Main RMarkdown file for generating the report.
├── README.md              # Instructions for setting up and running the project.
└── references.bib         # Bibtex references for package citations.

## Installation

To run the project, ensure you have R and the following packages installed:
- `dplyr` for data manipulation
- `ggplot2` for data visualization
- `knitr` and `rmarkdown` for generating reports
- `devtools` for session information
- `lintr` for code linting 

### Workflow
---
#### Create a single function R script
Create a R script that defines a function to subset SNP data set by a given 
sample ID. The function takes two arguments: a string with the path/name of the
SNP data set CSV file and a string with the sample ID to subset by.The function 
should return a data frame with this subset of the data.

#### Create a .Rmd file to use the function
The .Rmd file will use Rtools to create figures and graphs. 

#### Chunk 1
Chunk 1 will remain the same as automated. 

#### Chunk 2
Chunk 2 will assign the path/name of the SNP data set to a variable and assign 
the single sample ID to a variable in the data set.

#### Chunk 3
Chunk 3 will load necessary packages to manipulate the data set. Chunk 3 will 
also source the R script that was made for a single function.

#### Project Description
A detailed purpose of the project is written inbetween chunk 3 and 4.

### Subsetting data
Choose which sample ID will be used for figues and subset it from the full data

### Scatterplot
Create scatterplot with subsetted data and write figure description under the figure.

### Boxplot 
Create a boxplot with subsetted data abd write figure description under the figure.

### Session info
Use devtools to create a session info () log of data.

### Sources Cited
When sources are properly cited in the "reference.bib" file sources will generate automatically.

### Write a README
Properly write a "README.md" file for accurate repurposing and 

