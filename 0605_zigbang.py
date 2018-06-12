import requests
import pandas as pd
response=requests.get("http://api.zigbang.com/v1/items?detail=true&item_ids=11677482&item_ids=11459157&item_ids=11786269")
response.json()

df=pd.DataFrame([
    item.get("item")
    for item
    in response.json().get("items")
])

df
df.to_csv("zigbang.csv")
df.to_excel("zigbang.xlsx")

%matplotlib inline
df.deposit.hist()   # 전세 그래프
df.rent.hist()      # 월세 그래프
