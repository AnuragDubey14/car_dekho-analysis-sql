Create schema car;

-- 1. read cars data 

select * from car_dekho;

-- 2. Total Cars: To get a count of total records?
select count(*) from car_dekho;

-- 3. The manager asked the employee How many cars will be available in 2023?
select count(*) from car_dekho where year=2023;

-- 4. The manager asked the employee How many cars is available in 2020, 2021, 2022?
select year, count(*) as available_cars from car_dekho 
where year in (2020,2021,2022) group by year;

-- client asked me to print the total of all cars by year. I don't see all the details?
select year ,count(*) as available_car from car_dekho group by year;

-- Client asked to car dealer agent How many diesel cars will there be in 2020?
select year,count(*) as available_diesel_car from car_dekho where fuel = 'diesel'
 and year=2020 group by year;
 
-- Client requested a car dealer agent How many petrol cars will there be in 2020?
select year,count(*) as available_diesel_car from car_dekho where fuel = 'petrol'
 and year=2020 group by year;
 
/* The manager told the employee to give a print all the fuel cars
 (petrol,diesel, and CNG) come by all year? */
 select name, fuel, year from car_dekho where fuel in ('petrol','diesel','CNG');
 
 -- Managers said there were more than 100 cars in a given year, which year had more than 100 cars?
  select year,count(*) as 'number of cars' from car_dekho group by
 year having 'number of cars' > 100;
 
/* The managers Said to employee all cars count details between 2015 and 2023, 
 we need a complete a list? */
 
 select year,count(*) as 'count details' from car_dekho where year between 2015 and 2023
 group by year;
 
 -- The managers said to the employee all cars details between 2015 to 2023 we need complete list?
 select * from car_dekho where year between 2015 and 2023;
 
 
 
 
