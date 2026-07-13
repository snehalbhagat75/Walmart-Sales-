

# Running Total Sales
/*
select Date, Weekly_Sales , Sum(Weekly_Sales) 
over(order by Date) as Ruuning_Total 
from walmart_sales
*/ 

# Rank Stores
/*
select Store , Sum(Weekly_Sales) as Sales , 
Rank() over(order by sum(Weekly_Sales) desc )  as Store_Rank 
from walmart_sales 
group by Store
*/ 

# Stores Above Average
/*
with avg_sales as 
( select avg(Weekly_Sales) as avg_sales  from walmart_sales )

select * from walmart_sales , avg_sales 
where Weekly_Sales > avg_sales 
*/


# Sales Category
/*
select Weekly_Sales ,
case 
when Weekly_Sales > 200000 then "High" 
When Weekly_Sales > 100000 then "Medium" 
else "Low" 
end as Sales_Category 
from walmart_sales
*/ 

# Weekday Wise Sales
/* 
select dayname(Date), sum(Weekly_Sales) as Sales 
from walmart_sales 
group by dayname(date)
*/

# Quarter Wise Sales 
/*
select quarter(date) , sum(Weekly_Sales) as Sales 
from walmart_sales 
group by quarter(date)
*/

# Month Wise Highest Sales
/*
select monthname(Date) , sum(Weekly_Sales) as Sales 
from walmart_sales 
group by monthname(date)
*/





