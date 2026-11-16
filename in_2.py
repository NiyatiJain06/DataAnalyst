import pandas as pd

data = {
    "Name":['Ram', 'Shayam', 'Ghanshayam'],
    "Age":[10, 20, 30],
    "City":['Nagpur', 'Mumbai', 'Delhi']
}

df = pd.DataFrame(data)
print(df)

print("Displaying the info of data set:")
print(df.info())