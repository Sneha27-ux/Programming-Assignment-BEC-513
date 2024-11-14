## Question 1 ##

import sys

with open('to_select.tsv', 'r') as f:       # Load patterns into a set for quick lookup
    patterns = set(line.strip() for line in f)


for line in sys.stdin:   # Read from stdin and check for matches in any column
    columns = line.strip().split('\t')  # Split line by tab to check each column
    if any(column in patterns for column in columns):  # Check if any column matches
        print(line.strip())

