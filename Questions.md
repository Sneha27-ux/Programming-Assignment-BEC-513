# Coding assignments as a replacement for quiz

There are a total of five questions carrying two marks each. It involves thinking and coding parts. Complete marks will be awarded only when i)  you explain your approach (0.5) and ii) you have a working code uploaded on Github with usage manual (1.5). 

CRITICAL: Your code STRICTLY should contain documentation. Because, mostly, you will be reading from `stdin`, you must tell what is the format on which this code will work. Particularly, it should include:

1. Sample lines from `stdin` as comments. 

2. It should also contain the command with which you addressed the above point (`1`). 

3. A general usage statement in the comment. For example, this script takes one input file with pattern of interest and print only lines from the standard input that contains exactly that pattern.

**DEADLINE: by Nov. 15, 2024, 5:00 PM.**

## Q1: Selecting lines from stdin (Python Code + Linux Command)

Often, you would be interested in selecting lines from a file with patterns
exactly matching your interest. The pattern, however, can either be i) in a
column somewhere in the file, ii) combination of columns or something more. You
have to write a general code to select those lines. See the example below:

A query (to select lines) file may look like this (see `data/to_select.tsv`).

```
$ head -5 data/to_select.tsv
ENSG00000180353.10
ENSG00000180596.7
ENSG00000266379.6
ENSG00000262561.1
ENSG00000284999.1
```

And the big file from where you have to select may look like this (see `data/q1_data.tsv.gz`):

```
$ zcat data/q1_data.tsv.gz | awk 'NR==1||/ENSG/'  | head 

transcript_id(s)	gene_id	length	effective_length	expected_count	TPM	FPKM	posterior_mean_count	posterior_standard_deviation_of_count	pme_TPM	pme_FPKM	TPM_ci_lower_bound	TPM_ci_upper_bound	TPM_coefficient_of_quartile_variation	FPKM_ci_lower_bound	FPKM_ci_upper_bound	FPKM_coefficient_of_quartile_variation
ENST00000373020.8,ENST00000494424.1,ENST00000496771.5,ENST00000612152.4,ENST00000614008.4	ENSG00000000003.14	1224.31	1125.31	4.00	0.09	0.12	4.00	0.00	0.20	0.27	0.0683885	0.344228	0.25131	0.0955142	0.48334	0.251366
ENST00000373031.4,ENST00000485971.1	ENSG00000000005.5	940.50	841.50	0.00	0.00	0.00	0.00	0.00	0.08	0.11	0.00120747	0.1895	0.502341	0.00129288	0.26619	0.502379
ENST00000371582.8,ENST00000371584.8,ENST00000371588.9,ENST00000413082.1,ENST00000466152.5,ENST00000494752.1	ENSG00000000419.12	1077.43	978.43	803.00	20.76	28.51	803.00	0.00	20.46	28.76	19.0651	21.8942	0.0239603	26.8076	30.787	0.0239687
ENST00000367770.5,ENST00000367771.10,ENST00000367772.8,ENST00000423670.1,ENST00000470238.1	ENSG00000000457.13	3522.22	3423.22	564.00	4.17	5.72	564.00	0.00	4.14	5.82	3.70931	4.55996	0.0355908	5.23182	6.42815	0.0356293
ENST00000286031.10,ENST00000359326.8,ENST00000413811.3,ENST00000459772.5,ENST00000466580.6,ENST00000472795.5,ENST00000481744.5,ENST00000496973.5,ENST00000498289.5	ENSG00000000460.16	2091.02	1992.02	794.00	10.08	13.85	794.00	0.00	9.88	13.88	8.79838	10.9956	0.0383398	12.3933	15.4827	0.0383309
ENST00000374003.7,ENST00000374004.5,ENST00000374005.7,ENST00000399173.5,ENST00000457296.5,ENST00000468038.1,ENST00000475472.5	ENSG00000000938.12	1984.18	1885.18	2435.00	32.68	44.87	2435.00	0.00	31.95	44.91	30.3246	33.631	0.0179456	42.6014	47.2517	0.0179483
ENST00000359637.2,ENST00000367429.8,ENST00000466229.5,ENST00000470918.1,ENST00000496761.1,ENST00000630130.2	ENSG00000000971.15	2375.79	2276.79	16.43	0.18	0.25	16.32	0.47	0.31	0.43	0.121935	0.522164	0.234572	0.171868	0.734625	0.234607
ENST00000002165.10,ENST00000367585.1,ENST00000451668.1	ENSG00000001036.13	1869.59	1770.59	905.00	12.93	17.76	905.00	0.00	12.69	17.84	11.4186	14.0078	0.0349594	16.0494	19.688	0.0349339
ENST00000229416.10,ENST00000504353.1,ENST00000504525.1,ENST00000505197.1,ENST00000505294.5,ENST00000509541.5,ENST00000510837.5,ENST00000513939.6,ENST00000514004.5,ENST00000514373.3,ENST00000514933.2,ENST00000515580.1,ENST00000616923.5,ENST00000643939.1,ENST00000650454.1	ENSG00000001084.12	2290.61	2191.61	690.00	7.97	10.94	690.00	0.00	8.53	11.99	6.82069	10.1848	0.0676588	9.58672	14.3148	0.067699
```

2<sup>nd</sup> column contains your patterns of interest. But, your final run (code + linux command) should be in a way that code should not be sensitive to the column position of your pattern in the file. Of course, you are free to use `stdin` and other linux commands to mend it to your way. You have to think how to keep your code general so that when you are working in different scenario, you don't have to make changes in the code.

As instructed above, your thoughts explained on your GitHub repo will earn 0.5 marks and your coding 1.5. 


## Q2: Plotting a group of lines  ( R + Linux Command) 

A line plot requires `X` and `Y` values. But imagine, you have different set of `Y` values marked by categoires. You have to write a general purpose `R` code to plot multiple lines in the sample plot corresponding to different categories. You can find the data to plot here in the `data` directory (`data/q2_data.tsv`). 

Your code should read from the standard input. You are likely going to use `ggplot2`, you will see the advantage of that here.

Your final code should run like the following
```
$ cat data/q2_data.tsv | Rscript <your code.R> "different_clusters.png" "Relative from center [bp]" "Enrichment over Mean" "MNase fragment profile" 
```


## Q3: Merge multiple files (R + Linux Command)

Often, you will run into merging multiple files by any given column that contains the keys of your interest. Write a general R script which will take a file with the list of file names needs to be merged. The output should be in `stdout`. It can simply be then directed to the desired file as output. 

Your code will take `data/list_q3.tsv` as input, and produce inner join (meaning that the first column values that is common between both of the files).

```
$ cat data/list_q3.tsv 
data/q3_first.tsv
data/q3_second.tsv
```

Your code should run like the following:

```
Rscript join_list_of_files.R data/list_q3.tsv  > data/join_output.tsv
```

The output in the `stdout` should look like the following:

```
81d92351-c619-4585-9281-de33eaaabba4	TCGA-38-7271-01A	Primary Tumor	13.6971
2e5071ce-d8cf-46e5-9cc0-91353f0d643c	TCGA-55-7914-01A	Primary Tumor	24.8212
d3f1b81f-37ce-47b6-b98d-8530076007c7	TCGA-95-7043-01A	Primary Tumor	15.7251
c568fdc8-6942-44ff-a9d9-3f7a03fdc62a	TCGA-73-4658-01A	Primary Tumor	61.6106
dd6ec250-8d4d-4129-9664-7451c1760f4b	TCGA-86-8076-01A	Primary Tumor	28.685
9711a58c-08fc-428f-93a1-3d3db7df213e	TCGA-55-7726-01A	Primary Tumor	135.6884
3c9960fd-92f3-4bab-9771-933c95edc37f	TCGA-44-6147-01A	Primary Tumor	15.2054
b080156e-0711-42f5-83c7-a34de25cbba9	TCGA-50-5932-01A	Primary Tumor	14.6362
c3e2e99a-537a-4263-a835-fef5ed2c3588	TCGA-44-2661-01A	Primary Tumor	18.2345
cb59cd67-2756-45e1-80c7-67ad6d6823d4	TCGA-86-7954-01A	Primary Tumor	36.8657
```

NOTE: you would need `tidyverse` library for joining. Please install that. See the function called `reduce`. 

## Q4: Label with quantiles  (Python)

Many times you want to get a sense of data by just plotting them in quantiles.
The idea of quantiles is that equal number of datapoints will be there in each
quantile. For example, median is a 50% quantile equally separating data points
half and half. Your goal is to take a list of numbers from `stdin` and write a
python code to label them which quantile they belong to. You would take an
integer as argument from the user to know in how many quantiles you have to
group. See an example below. 

```
cat data/first_hundred_numbers.tsv | python group_in_quantiles.py 4 
75	q3	q3 (50.5, 75.25]
85	q4	q4 (75.25, 100.0]
44	q2	q2 (25.75, 50.5]
63	q3	q3 (50.5, 75.25]
27	q2	q2 (25.75, 50.5]
83	q4	q4 (75.25, 100.0]
90	q4	q4 (75.25, 100.0]
67	q3	q3 (50.5, 75.25]
77	q4	q4 (75.25, 100.0]
69	q3	q3 (50.5, 75.25]
```

The last column is the interval that defines those quantiles.

HINT: You can use `qcut` function from `pandas` library. 

## Q5: Plotting big matrix (Linux + Gnuplot)

Imagine you have to plot `100,000 x 2000` matrix data as heatmap. R and Python program sweat like crazy when encountered with such scale of data. Gnuplot wins here. Your goal is to plot this matrix as heatmap. You have access to `big_data.tsv.gz`. So, please plot that using Gnuplot. 

A couple of pointers here: 

1. You have to use `postscript` terminal because others like `pdf` will fail.

So you would write something like following: 
```
set terminal postscript size 6,6 font 'Arial, 15'
set output "big_matrix.eps"
```

This `eps` file needst to then get converted into `pdf`. You can use `ps2pdf` command for that. 


2. You have to show separation of clusters by horizontal lines. Something like panel A in [this](https://www.science.org/cms/10.1126/sciadv.abm4358/asset/a75483e1-f1ca-4c31-8977-d1938e5efd1c/assets/images/large/sciadv.abm4358-f2.jpg) figure.

HINT: Since you are going to work with time-consuming data. It is better to make a tiny subset of this data and call it `demo`. Work with that, and if all looks good then plot the original file. 


