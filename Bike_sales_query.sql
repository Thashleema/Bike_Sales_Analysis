create database bike_sales;
use bike_sales;

select * from bike;

-- total sales
select sum(revenue_inr) as total_sales from bike;

-- bike model most sales
select bike_model,sum(units_sold) as total_units_sold 
from bike 
group by bike_model 
order by total_units_sold desc limit 1; 

-- high revenue genrated bike model
select bike_model,sum(revenue_inr) as total_revenue
from bike 
group by bike_model 
order by total_revenue desc limit 3; 

-- city wise sales
select city,sum(revenue_inr) from bike group by city ;

-- top three city
select city,sum(revenue_inr) from bike group by city order by sum(revenue_inr) desc limit 3;

-- month wise sales
select month,sum(revenue_inr) from bike group by month;












