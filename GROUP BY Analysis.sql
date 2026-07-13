
# Total Sales by Store

/*
select Store , sum(Weekly_Sales) as Total_Sales 
from walmart_sales 
group by Store 
order by Total_Sales desc ;
*/

# Average Sales by Store
/*
select Store, avg(Weekly_Sales) as Avg_Sales 
from walmart_sales 
group by Store 
order by Avg_Sales desc; 
*/

# Total Holiday Sales
//*
select Holiday_Flag , sum(Weekly_Sales) as Sales
from walmart_sales 
group by Holiday_Flag
*/


# Average Fuel Price
/*
select avg(Fuel_Price) as Avg_fuel 
from walmart_sales;
*/

# Average Temperature by Store
/*
select Store , avg(Temperature) as Avg_Temperature
from walmart_sales
group by Store 
*/









