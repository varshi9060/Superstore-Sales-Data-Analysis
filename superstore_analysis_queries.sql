create database SuperstoreDB;
Use Superstoredb;
Select * From sales;
Select * From sales Where Category = 'Furniture';
Select Customer_Name, City, sales From sales;
Select * From sales Order By sales desc;
select sum(sales) as Total_Revenue From sales;
select Region, sum(sales) as Regional_sales
From sales
group by region
order by regional_sales desc;
select Category, sum(sales) as Total_Profit
From sales
group by category
Having Total_profit > 50000;		
select right(Order_date, 4) AS Sales_Year, sum(sales) AS Yearly_sales
From sales
group by sales_year
order by sales_year;	
select right(Order_date, 4) as Year, sum(sales) as Total_sales, sum(profit) as Total_Profit From Sales
group by year;
select category, sum(profit) As Profit_2017 From sales
Where right(Order_date, 4) = '2017'
group by category
order by profit_2017 DESC;
