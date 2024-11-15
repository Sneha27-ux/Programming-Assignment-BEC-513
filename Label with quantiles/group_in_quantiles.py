##### Question No. 4 

import sys
import pandas as pd

if len(sys.argv) != 2:
    print("Usage: python group_in_quantiles.py <number_of_quantiles>")
    sys.exit(1)

num_quantiles = int(sys.argv[1])  # Get the number of quantiles

q4_data_path = 'q4_data.tsv'
q4_data = pd.read_csv(q4_data_path, sep='\t', header=None, names=['value'])

input_data = sys.stdin.read().strip().split()


try:
    input_series = pd.Series([float(x) for x in input_data], name="value")
except ValueError:
    print("Error: Ensure all input data can be converted to float.")
    sys.exit(1)

# Use qcut to calculate quantile bins based on the reference data (q4_data)
_, bins = pd.qcut(q4_data['value'], q=num_quantiles, retbins=True)


quantile_labels = pd.cut(input_series, bins=bins, labels=[f'q{i+1}' for i in range(num_quantiles)])

# Create a DataFrame with quantile labels and intervals
output_df = pd.DataFrame({
    'value': input_series,
    'quantile': quantile_labels,
    'interval': pd.cut(input_series, bins=bins).astype(str)
})

# Print the output in TSV format
for index, row in output_df.iterrows():
    print(f"{row['value']}	{row['quantile']}	{row['interval']}")


