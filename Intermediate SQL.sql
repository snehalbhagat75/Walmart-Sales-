
# Top 5 Weeks
/*
select Date , Weekly_Sales 
from walmart_sales 
order by Weekly_Sales desc 
limit 5 ;
*/ 

# Average Sales During Holidays
/*
Select 
avg(Weekly_Sales) as avg_sales , Holiday_Flag
from walmart_sales
where Holiday_flag= 1
*/

# Average Sales During Non-Holiday
/*
select avg(Weekly_Sales) as Avg_Sales 
from walmart_sales 
where Holiday_Flag = 0  
*/ 

# Stores Having Sales More Than Overall Average
/*
select Store , avg(Weekly_Sales) as Avg_Sales 
from walmart_sales 
group by Store 
having Avg_Sales > (select avg(Weekly_Sales) from walmart_sales)
*/ 





