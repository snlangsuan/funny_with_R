library(readr)

dir <- "~/workspace/data.csv"
setwd(dir)
files <- list.files(dir, pattern = "*.csv")

data <- Reduce(rbind, lapply(files, read_csv))
