############ Question 3 ###############

suppressWarnings(suppressMessages(library(tidyverse)))


args <- commandArgs(trailingOnly=TRUE)

input <- args[1]
output <- args[2]

file_list <- readLines(input)
#print(file_list)

data_frames <- lapply(file_list, function(file) {
  df <- read_tsv(file, col_names = FALSE, show_col_types = FALSE)
  colnames(df) <- as.character(seq_len(ncol(df)))
  colnames(df)[1] <- "key" 
  #print(head(df))
  return(df)
})

result <- reduce(data_frames, inner_join, by ="key")

write_tsv(result,output)
