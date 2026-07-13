
# Top 10 Stores by Sales
/*
select Store , Sum(Weekly_Sales) as Total_Sales 
from walmart_sales 
group by store
Order by Total_Sales Desc
limit 10
*/

# Bottom 10 Stores
/*
select Store, Sum(Weekly_Sales) as Total_Sales 
from walmart_sales 
group by Store 
order by Total_Sales Asc 
limit 10;
*/ 

# Holiday vs Non-Holiday Sales
/*
select 
case 
When Holiday_Flag= 1 
Then "Holiday"
else "Non_Holiday"
end Weekly_type , 
sum(Weekly_Sales) as Sales 
from walmart_sales 
group by Holiday_Flag  
*/


# Highest Selling Week
/*
select date , sum(Weekly_Sales) as Sales from walmart_sales
group by Date
order by Sales desc
*/

# Monthly Sales
/*
select month(Date) as MONTH , Sum(Weekly_Sales) as Sales 
from walmart_sales 
group by MONTH;
*/

# Yearly Sales
/*
select year(date) as YEAR , Sum(Weekly_Sales) as Sales 
from walmart_sales
group by YEAR
*/ 









