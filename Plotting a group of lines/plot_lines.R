## Question 2 ##

#!/usr/bin/env Rscript

library(ggplot2)
library(reshape2)


args <- commandArgs(trailingOnly = TRUE)


if (length(args) != 4) {
  stop("Usage: Rscript plot_lines.R <output_file> <x_label> <y_label> <plot_title>")
}


output_file <- args[1]
x_label <- args[2]
y_label <- args[3]
plot_title <- args[4]

data <- read.table(file("stdin"), header = FALSE, sep = "\t")
colnames(data) <- c("X", "Y", "Category")

# Create the plot using ggplot2
plot <- ggplot(data, aes(x = X, y = Y, color = Category, group = Category)) +
  geom_line() +
  labs(x = x_label, y = y_label, title = plot_title, color = "Category") +
  theme_minimal()

ggsave(output_file, plot = plot, width = 10, height = 6, dpi = 300)

