CREATE DATABASE cardekho_analysis;
use cardekho_analysis;

CREATE TABLE vehicle_cleaned (
    Name VARCHAR(100),
    Year INT,
    Selling_Price INT,
    Km_driven INT,
    Fuel VARCHAR(20),
    Seller_Type VARCHAR(30),
    Transmission VARCHAR(20),
    Owner VARCHAR(50),
    brand VARCHAR(50),
    vehicle_age INT,
    selling_price_lakh DECIMAL(10,2)
);

SHOW TABLES;

DESCRIBE vehicle_cleaned;

select count(*) as total_vehicle from vehicle_cleaned;

SELECT *
FROM vehicle_cleaned
LIMIT 10;

select distinct Fuel from vehicle_cleaned;

select distinct Transmission from vehicle_cleaned;

SELECT DISTINCT owner FROM vehicle_cleaned;

select brand,count(*) as vehicle_count
from vehicle_cleaned
group by brand
order by vehicle_count desc
limit 10;

select Fuel, count(*) as vehicle_count
from vehicle_cleaned 
group by Fuel
order by vehicle_count desc;

select Fuel, count(*) as vehicle_count,
round(count(*) * 100.0 / (SELECT COUNT(*) FROM vehicle_cleaned),2
) as percentage
from vehicle_cleaned 
group by Fuel
order by vehicle_count desc;

SELECT transmission, COUNT(*) AS vehicle_count
FROM vehicle_cleaned
GROUP BY transmission
ORDER BY vehicle_count DESC;

SELECT transmission,COUNT(*) AS vehicle_count,
ROUND( COUNT(*) * 100.0 / (SELECT COUNT(*) FROM vehicle_cleaned),2) AS percentage
FROM vehicle_cleaned
GROUP BY transmission
ORDER BY percentage DESC;

SELECT owner,COUNT(*) AS vehicle_count
FROM vehicle_cleaned
GROUP BY owner
ORDER BY vehicle_count DESC;

SELECT seller_type,COUNT(*) AS vehicle_count
FROM vehicle_cleaned
GROUP BY seller_type
ORDER BY vehicle_count DESC;

SELECT ROUND(AVG(selling_price), 2) AS average_selling_price
FROM vehicle_cleaned;

SELECT ROUND(AVG(selling_price_lakh), 2) AS average_selling_price_lakh
FROM vehicle_cleaned;

SELECT ROUND(AVG(km_driven), 0) AS average_km_driven
FROM vehicle_cleaned;

SELECT ROUND(AVG(vehicle_age), 2) AS average_vehicle_age
FROM vehicle_cleaned;

select fuel, round(avg(selling_price_lakh),2) as average_price_lakh
FROM vehicle_cleaned
GROUP BY fuel
ORDER BY average_price_lakh DESC;

select Transmission, round(avg(selling_price_lakh),2) as average_price_lakh
from vehicle_cleaned
group by Transmission
order by average_price_lakh desc;

SELECT owner,ROUND(AVG(selling_price_lakh), 2) AS average_price_lakh
FROM vehicle_cleaned
GROUP BY owner
ORDER BY average_price_lakh DESC;

SELECT 
    seller_type,
    ROUND(AVG(selling_price_lakh), 2) AS average_price_lakh
FROM vehicle_cleaned
GROUP BY seller_type
ORDER BY average_price_lakh DESC;

SELECT 
    vehicle_age,
    ROUND(AVG(selling_price_lakh), 2) AS average_price_lakh
FROM vehicle_cleaned
GROUP BY vehicle_age
ORDER BY vehicle_age;

SELECT 
    ROUND(km_driven / 10000) * 10000 AS km_range,
    ROUND(AVG(selling_price_lakh), 2) AS average_price_lakh
FROM vehicle_cleaned
GROUP BY ROUND(km_driven / 10000)
ORDER BY km_range;

SELECT 
    name,
    brand,
    year,
    selling_price_lakh,
    km_driven
FROM vehicle_cleaned
ORDER BY selling_price DESC
LIMIT 10;

SELECT 
    name,
    brand,
    year,
    selling_price_lakh,
    km_driven
FROM vehicle_cleaned
ORDER BY selling_price ASC
LIMIT 10;

SELECT 
    name,
    brand,
    year,
    selling_price_lakh
FROM vehicle_cleaned
ORDER BY year DESC
LIMIT 10;

SELECT 
    name,
    brand,
    year,
    selling_price_lakh
FROM vehicle_cleaned
ORDER BY year ASC
LIMIT 10;

SELECT 
    brand,
    COUNT(*) AS vehicle_count,
    ROUND(AVG(selling_price_lakh), 2) AS average_price_lakh
FROM vehicle_cleaned
GROUP BY brand
ORDER BY average_price_lakh DESC;

SELECT 
    brand,
    ROUND(AVG(km_driven), 0) AS average_km_driven
FROM vehicle_cleaned
GROUP BY brand
ORDER BY average_km_driven DESC;

SELECT COUNT(*) AS diesel_vehicles
FROM vehicle_cleaned
WHERE fuel = 'Diesel';

SELECT COUNT(*) AS manual_vehicles
FROM vehicle_cleaned
WHERE transmission = 'Manual';

SELECT COUNT(*) AS automatic_vehicles
FROM vehicle_cleaned
WHERE transmission = 'Automatic';

SELECT COUNT(*) AS maruti_vehicles
FROM vehicle_cleaned
WHERE brand = 'Maruti';

SELECT 
    COUNT(*) AS vehicles_above_10_lakh
FROM vehicle_cleaned
WHERE selling_price_lakh > 10;

SELECT 
    COUNT(*) AS vehicles_below_2_lakh
FROM vehicle_cleaned
WHERE selling_price_lakh < 2;

SELECT COUNT(*) AS newer_vehicles
FROM vehicle_cleaned
WHERE vehicle_age <= 5;

SELECT 
    name,
    brand,
    km_driven,
    selling_price_lakh
FROM vehicle_cleaned
WHERE km_driven > 100000
ORDER BY km_driven DESC
LIMIT 10;

SELECT 
    fuel,
    transmission,
    COUNT(*) AS vehicle_count,
    ROUND(AVG(selling_price_lakh), 2) AS avg_price_lakh,
    ROUND(AVG(km_driven), 0) AS avg_km_driven
FROM vehicle_cleaned
GROUP BY fuel, transmission
ORDER BY vehicle_count DESC;