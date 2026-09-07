import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("ecommerce_orders.csv", parse_dates=["order_date"])

# Basic cleaning
df = df.drop_duplicates(subset=["order_id"])
df["revenue"] = pd.to_numeric(df["revenue"], errors="coerce")
df["month"] = df["order_date"].dt.to_period("M").astype(str)

delivered = df[df["order_status"] == "Delivered"].copy()

print("Rows:", len(df))
print("Delivered revenue:", round(delivered["revenue"].sum(), 2))
print("Orders:", delivered["order_id"].nunique())
print("AOV:", round(delivered["revenue"].mean(), 2))

# Monthly trend
monthly = delivered.groupby("month")["revenue"].sum()
monthly.plot(kind="line", marker="o", title="Monthly Revenue")
plt.ylabel("Revenue")
plt.tight_layout()
plt.show()

# Category performance
category = delivered.groupby("category")["revenue"].sum().sort_values(ascending=False)
category.plot(kind="bar", title="Revenue by Category")
plt.ylabel("Revenue")
plt.tight_layout()
plt.show()

# Customer frequency
customer = delivered.groupby("customer_id").agg(
    orders=("order_id","nunique"),
    revenue=("revenue","sum")
)
customer["segment"] = pd.cut(
    customer["orders"], bins=[0,1,3,999],
    labels=["One-time","Repeat","Loyal"]
)
print(customer.groupby("segment", observed=True)["revenue"].agg(["count","sum"]))

# Export cleaned data for BI
delivered.to_csv("cleaned_delivered_orders.csv", index=False)
