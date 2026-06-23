create database superstore;
use superstore;

create table sales(
order_id varchar(50),
order_date date,
customer_name varchar(100),
region varchar(50),
category varchar(50),
sales decimal(10,2),
quantity int,
profit decimal(10,2),
discount decimal(5,2)
);

select * from sales
limit 10;
select count(*) as total_recorrds
from sales;

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;

select
     monthname(order_date) as month,
     round(sum(sales),2) as total_sales
     from sales
     group by month(order_date), monthname(order_date)
     order by month(order_date);
     
     SELECT
    MONTHNAME(Order_Date) AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY MONTH(Order_Date);

SELECT
    MONTHNAME(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY MONTH(`Order Date`), MONTHNAME(`Order Date`)
ORDER BY MONTH(`Order Date`);

SELECT
    MONTHNAME(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY MONTH(`Order Date`), MONTHNAME(`Order Date`)
ORDER BY MONTH(`Order Date`);

SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;