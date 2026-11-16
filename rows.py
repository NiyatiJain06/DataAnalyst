#head() and tail()
#head(n)/head() default 5
#tail(n)/tail() default 5

import pandas as pd

df = pd.read_json("C:\Data Analyst\Pandas\sample_Data.json")

print("Display 10 rows of first:")
#print(df.head(10))
print(df.head())

print("Display 10 rows of last:")
#print(df.tail(10))
print(df.tail())