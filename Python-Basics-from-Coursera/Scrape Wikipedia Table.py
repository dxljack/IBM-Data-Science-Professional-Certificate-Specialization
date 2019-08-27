# Using Pandas’ read_html(). 
# You can read HTML tables into a list of DataFrame objects. 
# It finds the table element, does the parsing and creates a DataFrame. 
# This function searches for table elements and only for tr and th rows and td elements within each tr or th element in the table. 
# Below is a sample code to pass the HTML to pd.read_html().

import pandas as pd
import wikipedia as wp
 
# Get the html source
html = wp.page("List of U.S. states by Hispanic and Latino population").html().encode("UTF-8")
df = pd.read_html(html)[0]
df.to_csv('beautifulsoup_pandas.csv',header=0,index=False)
print (df)
