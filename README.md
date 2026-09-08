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
Python (Pandas, Matplotlib) • MySQL/SQL • Power BI • DAX

## Project workflow
CSV → Python cleaning & EDA → SQL business analysis → Power BI dashboard → recommendations

## Power BI Dashboard

The interactive Power BI dashboard provides an executive view of e-commerce performance.

### Dashboard features
- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Units Sold
- Delivered Revenue
- Unique Customers
- Repeat Customer Rate
- Cancellation Rate
- Monthly Revenue Trend
- Revenue by Category
- Top 10 Products by Revenue
- Revenue by City
- Interactive filters for City, Category, Channel and Order Status

### Dashboard Preview

![E-Commerce Dashboard](dashboard-overview.png)

## Key Business Insights

The analysis focuses on identifying revenue drivers, customer behavior and operational performance.

- Identified the highest-performing product categories and cities by revenue.
- Evaluated monthly revenue patterns to understand business performance over time.
- Analyzed repeat purchasing behavior to understand customer retention.
- Evaluated cancelled orders to identify potential operational issues.
- Compared product performance to identify high-revenue products.

## Business Recommendations

- Focus marketing and inventory planning on high-performing categories and products.
- Investigate cities with lower revenue or higher cancellation rates.
- Develop retention strategies for one-time customers to increase repeat purchases.
- Monitor cancellation trends to identify potential delivery, payment or operational issues.

## Resume-ready bullets

- Analyzed 15K+ e-commerce transactions using Python, Pandas and SQL to evaluate revenue trends, customer behavior, product performance and order outcomes.
- Built an interactive Power BI dashboard featuring 10+ KPIs, monthly revenue trends, product/category analysis, city performance and interactive slicers.
- Developed DAX measures for delivered revenue, cancellation rate, unique customers and repeat customer rate to support business-focused analysis.

## Run
1. Install Python and pandas/matplotlib.
2. Keep `analysis.py` and `ecommerce_orders.csv` in the same folder.
3. Run `python analysis.py`.
4. Load the CSV into MySQL for SQL analysis.
5. Import `cleaned_delivered_orders.csv` into Power BI.
