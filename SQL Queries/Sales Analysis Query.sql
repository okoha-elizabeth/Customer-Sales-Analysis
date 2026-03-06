create database Sales_Analysis
use Sales_Analysis
select * from [dbo].[Customer Sales Analysis]

update [dbo].[Customer Sales Analysis]
set age =21
where age = 221

-- ================================
-- CUSTOMER SALES ANALYSIS PROJECT
-- ================================


-- 1. Top 10 Products by Revenue
select top 10  product_name, sum (revenue) [Total_Revenue] from [dbo].[Customer Sales Analysis]
group by product_name
order by total_revenue desc

-- 2. Top 5 Revenue by Category
Select top 5 category, sum (revenue) [Category_Revenue] from [dbo].[Customer Sales Analysis]
group by category
order by Category_Revenue desc

-- 3. Top 10 Customers by Spending
select top 10  customer_name, sum (revenue) [Total_spent] from [dbo].[Customer Sales Analysis]
group by customer_name
order by Total_spent desc

-- 4. Monthly Revenue Trend
select  month (Order_Date) [Sales_month], sum (revenue) [Total_revenue] from [dbo].[Customer Sales Analysis]
group by month (Order_Date)
order by Sales_month

-- 5. Most used Sales Channel
select sales_channel, count (sales_channel) [Total_count] from [dbo].[Customer Sales Analysis]
group by Sales_Channel
order by Total_count desc

-- 6. Best Sales Channel
select sales_channel, sum (revenue) [Total_revenue] from [dbo].[Customer Sales Analysis]
group by Sales_Channel
order by Total_revenue desc

-- 7. Average Customer Age
select  Avg (age) [Average_Customer_Age] from [dbo].[Customer Sales Analysis]

-- 8. Most Profitable Products
select product_name, sum (profit) [Total_Profit] from [dbo].[Customer Sales Analysis]
group by Product_name
order by Total_Profit desc

-- 9. Region Generating Highest Revenue
select region, sum (Revenue) [Total_Revenue] from [dbo].[Customer Sales Analysis]
group by region
order by Total_revenue desc

-- 10. Return Rate by Products
select product_name, count (*) [Total_orders] from [dbo].[Customer Sales Analysis]
where Returned= 'yes'
group by Product_name
order by Total_orders desc

-- 11.  Average Category Rating
select category, avg (customer_rating) [Average_Customer_rating] from [dbo].[Customer Sales Analysis]
group by category
order by Average_Customer_rating 




