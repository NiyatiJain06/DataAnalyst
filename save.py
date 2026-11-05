import pandas as pd

data = {
    "Name":['Ram', 'Shayam', 'Ghanshayam'],
    "Age":[10, 20, 30],
    "City":['Nagpur', 'Mumbai', 'Delhi']
}

df = pd.DataFrame(data)
print(df)

#file save in CSV file format
#df.to_csv("output.csv", index = False)

#file save in excel file Format
#df.to_excel("output.xlsx", index = False)

#file save in json file format
df.to_json("output.json", index = False)