create database crop;
show tables;
select * from cropproductions;
select * from climate_agriculture;

#1. Display total production for each state. Sort in descending order.
select state,SUM(production) Total_Production from cropproductions group by state order by Total_Production desc;

#2. Find average annual rainfall.
select avg(annual_rainfall) AVG_Rainfall from climate_agriculture;

#3. Display crops with production greater than 50,000.
select crop,production from cropproductions where production > 50000;

#4. Show total production and average rainfall for each crop
select crop,sum(production),avg(annual_rainfall) from 
cropproductions join climate_agriculture on
cropproductions.record_id = climate_agriculture.record_id group by crop;

#5. Display states where total production is greater than 200000
select distinct state, production from cropproductions where production > 20000;

#6. Find crops whose average production is higher than overall average production
select avg(production) from cropproductions; #15329358.6065
#first method
select crop,avg(production) from cropproductions group by crop having avg(production) >15329358.6065;
#secong method using subqueries
select crop,avg(production) from cropproductions group by crop having avg(production) > (select avg(production) from cropproductions);

#7. Display state-wise total production and average fertilizer usage
select state,sum(production),avg(fertilizer) from 
cropproductions join climate_agriculture on
cropproductions.record_id = climate_agriculture.record_id group by state; 

#8. Find the state with the highest total production.
select state,max(production) Total_Production from cropproductions group by state order by Total_Production desc limit 1;

#9. Find crops grown where rainfall is above overall average rainfall.
select * from cropproductions;
select * from climate_agriculture;

select crop,avg(annual_rainfall) from 
cropproductions join climate_agriculture on
cropproductions.record_id = climate_agriculture.record_id group by crop
having avg(annual_rainfall) > (select avg(annual_rainfall)from climate_agriculture); 


#10. Find states where the total production is greater than 200000 and the average annual rainfall is greater than 800 mm. Display state, total
# production, and average rainfall. Sort by total production in descending order. 

select * from cropproductions;
select * from climate_agriculture;


select state,sum(production) Total_production,
             avg(annual_rainfall) Avg_rainfall
from cropproductions join climate_agriculture on
cropproductions.record_id = climate_agriculture.record_id 
group by state having Total_production > 200000 and Avg_rainfall > 800 order by Total_production desc;








