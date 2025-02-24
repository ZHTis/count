<<<<<<< HEAD
import pandas as pd
import ast

# the data form is required to have no space at the beginning and nothing and the end,
# and dicts should be separated with comma.

path = '/Users/rubythurs/Documents/save_2023-10-14-11.36.22.csv'
with open(path) as f:
    data = f.read()
    data2 = ast.literal_eval(data) #tuple

dictx = []

for item in data2:
    if isinstance(item, dict):
        dictx.append(item)

print(type(dictx))
pd.set_option('display.max_columns', 40)
df = pd.DataFrame(dictx)
=======
import pandas as pd
import ast

# the data form is required to have no space at the beginning and nothing and the end,
# and dicts should be separated with comma.

path = '/Users/rubythurs/Documents/save_2023-10-14-11.36.22.csv'
with open(path) as f:
    data = f.read()
    data2 = ast.literal_eval(data) #tuple

dictx = []

for item in data2:
    if isinstance(item, dict):
        dictx.append(item)

print(type(dictx))
pd.set_option('display.max_columns', 40)
df = pd.DataFrame(dictx)
>>>>>>> ca2f6025da45805b4cbfb3a3c903bc7f96369531
print(df)