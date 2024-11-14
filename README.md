# Programming-Assignment-BEC-513
####### Question 1 : Selecting lines from stdin ######

1. Use the "cd" command to navigate to the folder where your data(q1_data.tsv.gz) and python script (line_selection.py) 
   are stored.

2. To generalize python script(line_selection.py), I have used any() function to check if any column matches a pattern 
   given in query. any() checks all columns in a single line without needing an explicit loop.

3. Use the zless command to decompress q1_data.tsv.gz and pipe the output to your Python script: zless q1_data.tsv.gz | 
   python3 line_selection.py
   
############ Question 2 : Plotting a group of lines ##########

1. The script(plot_lines.R) reads tsv data from "stdin" making it flexible for various input data sources (files or 
   pipelines).
2. The input data is structured with an X column (independent variable), a Y column (dependent variable), and a category 
   column that represents different groups or series to be plotted.
3. The script uses aes(color = Category, group = Category) in the ggplot call, which automatically plots separate lines 
    for each unique value in the category column. This makes it handling any number of categories in the data, allowing 
    for the visualization of multiple lines in the same plot.
4. The script accepts command-line arguments for the output file name, x-axis label, y-axis label, and plot title. This 
   makes it versatile.
5. By using geom_line(), the script draws a line plot for each Category, ensuring that each line is distinguished by 
   color. This approach is well-suited for visualizing trends or comparisons among different groups in the data
6. The use of theme_minimal() gives the plot a clean and modern appearance.
7. As long as the input format (X, Y, and Category columns) is consistent, the script can handle different data sizes, 
   from small datasets to large ones with many points and categories. The plotting logic will automatically adjust based 
   on the unique values in the Category column.
8. Finally to plot the graph, use linux terminal and plot_lines.R.
   
cat data/q2_data.tsv | Rscript plot_lines.R "different_clusters.png" "Relative from center [bp]" "Enrichment over Mean" "MNase fragment profile"


############## Question 3  : Merge multiple files #################

1. This R script(join_list_of_files.R) reads a list of file paths from an input text file, loads each tsv file into a 
   data frame, and merges them sequentially by the first column (key). The result is written to an output file.

Rscript join_list_of_files.R list_q3.tsv outputs/join_output.tsv

###########  Question 4 : Label with quantiles ##############
1. first_hundred_numbers.tsv file serves as the standard input that will be labelled according to which quantile each 
   number falls into.
2. The numbers from first_hundred_numbers.tsv are then compared against the quantile bins calculated using q4_data.tsv.
3. And then run: cat first_hundred_numbers.tsv | python group_in_quantiles.py 4 > Quantiles.tsv

########## Question 5 : Plotting big matrix ################

