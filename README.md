# E-Commerce Customer & Revenue Intelligence

## Business problem
An e-commerce company wants to understand revenue trends, customer behavior, product performance and operational outcomes. This project turns transactional data into actionable business insights.

## Dataset
`ecommerce_orders.csv` contains 15,000 synthetic e-commerce transactions designed to resemble a real business dataset. It includes order dates, customers, cities, products, categories, discounts, revenue, channels, payment methods and order status.

## Questions answered
- How is revenue changing month to month?
- Which categories and products generate the most revenue?
- Which cities perform best?
- What is the average order value?
- Which customers are repeat/loyal customers?
- What is the cancellation rate?
- Which sales channels and payment methods perform best?

## Tech stack
Python (Pandas, Matplotlib) • MySQL/SQL • Power BI • Excel

## Project workflow
CSV → Python cleaning & EDA → SQL business analysis → Power BI dashboard → recommendations

## Power BI dashboard plan
Create KPI cards for Revenue, Orders, AOV, Repeat Customer %, Cancellation Rate and Returned Orders. Add monthly revenue trend, category revenue, top products, city performance, channel mix and customer segments. Add slicers for date, city, category and channel.

## Resume-ready bullets
- Analyzed 15K+ e-commerce transactions using Python and SQL to evaluate revenue trends, customer retention, product performance and cancellation behavior.
- Built an interactive Power BI business dashboard with KPI cards, time-series trends, category/product analysis and customer segmentation.
- Performed data cleaning and exploratory analysis in Pandas and translated findings into business recommendations.

## Run
1. Install Python and pandas/matplotlib.
2. Keep `analysis.py` and `ecommerce_orders.csv` in the same folder.
3. Run `python analysis.py`.
4. Load the CSV into MySQL for SQL analysis.
5. Import `cleaned_delivered_orders.csv` into Power BI.
