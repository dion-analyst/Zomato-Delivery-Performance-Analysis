CREATE DATABASE zomato_project;

USE zomato_project;

SELECT 
    COUNT(*)
FROM
    raw_zomato;

DESCRIBE raw_zomato;

CREATE TABLE zomato_analysis LIKE raw_zomato;

INSERT INTO zomato_analysis
SELECT *
FROM raw_zomato;

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    COUNT(*) AS total_rows
FROM
    zomato_analysis;

# inspect the table structure
DESCRIBE zomato_analysis;

SELECT 
    SUM(CASE
        WHEN ID IS NULL THEN 1
        ELSE 0
    END) AS ID_nulls,
    SUM(CASE
        WHEN Delivery_person_ID IS NULL THEN 1
        ELSE 0
    END) AS Delivery_person_ID_nulls,
    SUM(CASE
        WHEN Delivery_person_Age IS NULL THEN 1
        ELSE 0
    END) AS Delivery_person_Age_nulls,
    SUM(CASE
        WHEN Delivery_person_Ratings IS NULL THEN 1
        ELSE 0
    END) AS Delivery_person_Ratings_nulls,
    SUM(CASE
        WHEN Restaurant_latitude IS NULL THEN 1
        ELSE 0
    END) AS Restaurant_latitude_nulls,
    SUM(CASE
        WHEN Restaurant_longitude IS NULL THEN 1
        ELSE 0
    END) AS Restaurant_longitude_nulls,
    SUM(CASE
        WHEN Delivery_location_latitude IS NULL THEN 1
        ELSE 0
    END) AS Delivery_location_latitude_nulls,
    SUM(CASE
        WHEN Delivery_location_longitude IS NULL THEN 1
        ELSE 0
    END) AS Delivery_location_longitude_nulls,
    SUM(CASE
        WHEN Order_Date IS NULL THEN 1
        ELSE 0
    END) AS Order_Date_nulls,
    SUM(CASE
        WHEN Time_Orderd IS NULL THEN 1
        ELSE 0
    END) AS Time_Orderd_nulls,
    SUM(CASE
        WHEN Time_Order_picked IS NULL THEN 1
        ELSE 0
    END) AS Time_Order_picked_nulls,
    SUM(CASE
        WHEN Weather_conditions IS NULL THEN 1
        ELSE 0
    END) AS Weather_conditions_nulls,
    SUM(CASE
        WHEN Road_traffic_density IS NULL THEN 1
        ELSE 0
    END) AS Road_traffic_density_nulls,
    SUM(CASE
        WHEN Vehicle_condition IS NULL THEN 1
        ELSE 0
    END) AS Vehicle_condition_nulls,
    SUM(CASE
        WHEN Type_of_order IS NULL THEN 1
        ELSE 0
    END) AS Type_of_order_nulls,
    SUM(CASE
        WHEN Type_of_vehicle IS NULL THEN 1
        ELSE 0
    END) AS Type_of_vehicle_nulls,
    SUM(CASE
        WHEN multiple_deliveries IS NULL THEN 1
        ELSE 0
    END) AS multiple_deliveries_nulls,
    SUM(CASE
        WHEN Festival IS NULL THEN 1
        ELSE 0
    END) AS Festival_nulls,
    SUM(CASE
        WHEN City IS NULL THEN 1
        ELSE 0
    END) AS City_nulls,
    SUM(CASE
        WHEN `Time_taken (min)` IS NULL THEN 1
        ELSE 0
    END) AS Time_taken_nulls
FROM
    zomato_analysis;

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    COUNT(*) AS total_rows
FROM
    zomato_analysis;

SELECT 
    ID
FROM
    zomato_analysis
GROUP BY ID
HAVING COUNT(*) > 1;

SELECT 
    ID,
    Delivery_person_ID,
    Delivery_person_Age,
    Delivery_person_Ratings,
    Restaurant_latitude,
    Restaurant_longitude,
    Delivery_location_latitude,
    Delivery_location_longitude,
    Order_Date,
    Time_Orderd,
    Time_Order_picked,
    Weather_conditions,
    Road_traffic_density,
    Vehicle_condition,
    Type_of_order,
    Type_of_vehicle,
    multiple_deliveries,
    Festival,
    City,
    `Time_taken (min)`
FROM
    zomato_analysis
GROUP BY ID , Delivery_person_ID , Delivery_person_Age , Delivery_person_Ratings , Restaurant_latitude , Restaurant_longitude , Delivery_location_latitude , Delivery_location_longitude , Order_Date , Time_Orderd , Time_Order_picked , Weather_conditions , Road_traffic_density , Vehicle_condition , Type_of_order , Type_of_vehicle , multiple_deliveries , Festival , City , `Time_taken (min)`
HAVING COUNT(*) > 1;

SELECT 
    SUM(CASE
        WHEN ID = 'NaN' THEN 1
        ELSE 0
    END) AS ID_NaN,
    SUM(CASE
        WHEN Delivery_person_ID = 'NaN' THEN 1
        ELSE 0
    END) AS Delivery_person_ID_NaN,
    SUM(CASE
        WHEN Delivery_person_Age = 'NaN' THEN 1
        ELSE 0
    END) AS Delivery_person_Age_NaN,
    SUM(CASE
        WHEN Delivery_person_Ratings = 'NaN' THEN 1
        ELSE 0
    END) AS Delivery_person_Ratings_NaN,
    SUM(CASE
        WHEN Restaurant_latitude = 'NaN' THEN 1
        ELSE 0
    END) AS Restaurant_latitude_NaN,
    SUM(CASE
        WHEN Restaurant_longitude = 'NaN' THEN 1
        ELSE 0
    END) AS Restaurant_longitude_NaN,
    SUM(CASE
        WHEN Delivery_location_latitude = 'NaN' THEN 1
        ELSE 0
    END) AS Delivery_location_latitude_NaN,
    SUM(CASE
        WHEN Delivery_location_longitude = 'NaN' THEN 1
        ELSE 0
    END) AS Delivery_location_longitude_NaN,
    SUM(CASE
        WHEN Order_Date = 'NaN' THEN 1
        ELSE 0
    END) AS Order_Date_NaN,
    SUM(CASE
        WHEN Time_Orderd = 'NaN' THEN 1
        ELSE 0
    END) AS Time_Orderd_NaN,
    SUM(CASE
        WHEN Time_Order_picked = 'NaN' THEN 1
        ELSE 0
    END) AS Time_Order_picked_NaN,
    SUM(CASE
        WHEN Weather_conditions = 'NaN' THEN 1
        ELSE 0
    END) AS Weather_conditions_NaN,
    SUM(CASE
        WHEN Road_traffic_density = 'NaN' THEN 1
        ELSE 0
    END) AS Road_traffic_density_NaN,
    SUM(CASE
        WHEN Vehicle_condition = 'NaN' THEN 1
        ELSE 0
    END) AS Vehicle_condition_NaN,
    SUM(CASE
        WHEN Type_of_order = 'NaN' THEN 1
        ELSE 0
    END) AS Type_of_order_NaN,
    SUM(CASE
        WHEN Type_of_vehicle = 'NaN' THEN 1
        ELSE 0
    END) AS Type_of_vehicle_NaN,
    SUM(CASE
        WHEN multiple_deliveries = 'NaN' THEN 1
        ELSE 0
    END) AS multiple_deliveries_NaN,
    SUM(CASE
        WHEN Festival = 'NaN' THEN 1
        ELSE 0
    END) AS Festival_NaN,
    SUM(CASE
        WHEN City = 'NaN' THEN 1
        ELSE 0
    END) AS City_NaN,
    SUM(CASE
        WHEN `Time_taken (min)` = 'NaN' THEN 1
        ELSE 0
    END) AS Time_taken_NaN
FROM
    zomato_analysis;

SELECT 
    SUM(CASE
        WHEN Weather_conditions = 'NaN' THEN 1
        ELSE 0
    END) AS Weather_conditions_NaN
FROM
    zomato_analysis;

SELECT 
    SUM(CASE
        WHEN Road_traffic_density = 'NaN' THEN 1
        ELSE 0
    END) AS Road_traffic_density_NaN
FROM
    zomato_analysis;

SELECT 
    SUM(CASE
        WHEN City = 'NaN' THEN 1
        ELSE 0
    END) AS City_NaN
FROM
    zomato_analysis;

SELECT 
    SUM(CASE
        WHEN Festival = 'NaN' THEN 1
        ELSE 0
    END) AS Festival_NaN
FROM
    zomato_analysis;

SELECT 
    *
FROM
    zomato_analysis;

SELECT DISTINCT
    (Delivery_person_Age) AS unique_age, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY unique_age;

SELECT 
    MIN(Delivery_person_Age) AS min_age,
    MAX(Delivery_person_Age) AS max_age,
    COUNT(*) AS total_rows
FROM
    zomato_analysis;

SELECT 
    Delivery_person_Age, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Delivery_person_Age = 15
        OR Delivery_person_Age = 50
GROUP BY Delivery_person_Age;

SELECT 
    COUNT(*) AS matching_records
FROM
    zomato_analysis
WHERE
    (Delivery_person_Age = 15
        OR Delivery_person_Age = 50)
        AND Weather_conditions = 'NaN';

SELECT 
    COUNT(*) AS matching_records
FROM
    zomato_analysis
WHERE
    (Delivery_person_Age = 15
        OR Delivery_person_Age = 50)
        AND Road_traffic_density = 'NaN';

SELECT 
    Delivery_person_Age,
    Weather_conditions,
    Road_traffic_density
FROM
    zomato_analysis
WHERE
    Delivery_person_Age = 15
        OR Delivery_person_Age = 50;

SELECT 
    Delivery_person_Age,
    Weather_conditions,
    Road_traffic_density,
    `Time_taken (min)`
FROM
    zomato_analysis
WHERE
    Delivery_person_Age = 15
        OR Delivery_person_Age = 50;

SELECT 
    MIN(`Time_taken (min)`) AS min_time_taken,
    MAX(`Time_taken (min)`) AS max_time_taken,
    AVG(`Time_taken (min)`) AS avg_time_taken,
    COUNT(*) AS total_rows
FROM
    zomato_analysis;

SELECT 
    `Time_taken (min)`, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY `Time_taken (min)`;

SELECT 
    Weather_conditions, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Weather_conditions;

SELECT 
    Road_traffic_density, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Road_traffic_density;

SELECT 
    Type_of_vehicle, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Type_of_vehicle;

SELECT 
    Type_of_vehicle, `Time_taken (min)`, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Type_of_vehicle = 'bicycle'
GROUP BY Type_of_vehicle , `Time_taken (min)`;

SELECT 
    COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Type_of_vehicle = 'bicycle';

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    Type_of_order, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Type_of_order;

SELECT 
    multiple_deliveries, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY multiple_deliveries;

SELECT 
    Vehicle_condition, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Vehicle_condition;

SELECT 
    COUNT(*) AS match_records
FROM
    zomato_analysis
WHERE
    Vehicle_condition = 3
        AND Weather_conditions = 'NaN';

SELECT 
    COUNT(*) AS match_records
FROM
    zomato_analysis
WHERE
    Vehicle_condition = 3 AND City = 'NaN';

SELECT 
    COUNT(*) AS match_records
FROM
    zomato_analysis
WHERE
    Vehicle_condition = 3
        AND Festival = 'NaN';

SELECT 
    ID,
    Delivery_person_ID,
    Delivery_person_Age,
    Delivery_person_Ratings,
    Restaurant_latitude,
    Restaurant_longitude,
    Delivery_location_latitude,
    Delivery_location_longitude,
    Order_Date,
    Time_Orderd,
    Time_Order_picked,
    Weather_conditions,
    Road_traffic_density,
    Vehicle_condition,
    Type_of_order,
    Type_of_vehicle,
    multiple_deliveries,
    Festival,
    City,
    `Time_taken (min)`
FROM
    zomato_analysis
WHERE
    Vehicle_condition = 3;

SELECT 
    AVG(`Time_taken (min)`) AS avg_time_taken,
    Weather_conditions
FROM
    zomato_analysis
GROUP BY Weather_conditions;

SELECT 
    MIN(`Time_taken (min)`) AS min_time_taken,
    MAX(`Time_taken (min)`) AS max_time_taken
FROM
    zomato_analysis
WHERE
    `Time_taken (min)` <= 0;

SELECT 
    COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    `Time_taken (min)` <= 0;

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    ID, Time_orderd, Time_Order_picked
FROM
    zomato_analysis
WHERE
    STR_TO_DATE(Time_Order_picked, '%H:%i') < STR_TO_DATE(Time_Orderd, '%H:%i')
        AND Time_Orderd <> 'NaN'
        AND Time_Order_picked <> 'NaN';

SELECT 
    COUNT(*) AS invalid_time_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked <> 'NaN'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$';

SELECT 
    Time_Order_picked, COUNT(*) AS invalid_time_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked <> 'NaN'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
GROUP BY Time_Order_picked;

SELECT 
    Time_Order_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked <> 'NaN'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
GROUP BY Time_Order_picked;

SELECT 
    Time_Order_picked, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Time_Order_picked = 'NaN';

SELECT 
    Time_Order_picked, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NULL;

UPDATE zomato_analysis 
SET 
    Weather_conditions = NULL
WHERE
    Weather_conditions = 'NaN';

SELECT 
    Weather_conditions
FROM
    zomato_analysis
WHERE
    Weather_conditions = 'NaN';

UPDATE zomato_analysis 
SET 
    Road_traffic_density = NULL
WHERE
    Road_traffic_density = 'NaN';

SELECT 
    Road_traffic_density
FROM
    zomato_analysis
WHERE
    Road_traffic_density = 'NaN';

UPDATE zomato_analysis 
SET 
    City = NULL
WHERE
    City = 'NaN';

SELECT 
    City
FROM
    zomato_analysis
WHERE
    City = 'NaN';

USE zomato_project;

UPDATE zomato_analysis 
SET 
    Festival = NULL
WHERE
    Festival = 'NaN';

SELECT 
    Festival
FROM
    zomato_analysis
WHERE
    Festival = 'NaN';

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    MIN(multiple_deliveries) AS min_multiple_deliveries,
    MAX(multiple_deliveries) AS max_multiple_deliveries
FROM
    zomato_analysis;

SELECT 
    MIN(Vehicle_condition) AS min_vehicle_condition,
    MAX(Vehicle_condition) AS max_vehicle_condition
FROM
    zomato_analysis;

SELECT 
    Vehicle_condition,
    Weather_conditions,
    COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Vehicle_condition = 3
        AND Weather_conditions IS NULL
GROUP BY Vehicle_condition , Weather_conditions;

SELECT 
    COUNT(*) AS invalid_time_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$';

SELECT 
    Time_Order_picked, COUNT(*) AS invalid_time_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
GROUP BY Time_Order_picked;

SELECT 
    MIN(Time_Order_picked) AS min_time_picked,
    MAX(Time_Order_picked) AS max_time_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
        AND Time_Order_picked REGEXP '^[0-9]+(.[0-9]+)?$';
  
SELECT 
    COUNT(*) AS decimal_time_values
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked REGEXP '^[0-9]+(.[0-9]+)?$'
        AND Time_Order_picked >= 0
        AND Time_Order_picked <= 1;

SELECT 
    COUNT(*) AS invalid_dates
FROM
    zomato_analysis
WHERE
    Order_Date IS NOT NULL
        AND STR_TO_DATE(Order_Date, '%d-%m-%Y') IS NULL;

UPDATE zomato_analysis 
SET 
    Order_Date = STR_TO_DATE(Order_Date, '%d-%m-%Y')
WHERE
    Order_Date IS NOT NULL;

ALTER TABLE zomato_analysis
MODIFY COLUMN Order_Date DATE;

DESCRIBE zomato_analysis;

SELECT 
    COUNT(*) AS invalid_time_ordered
FROM
    zomato_analysis
WHERE
    Time_Orderd <> 'NaN'
        AND STR_TO_DATE(Time_Orderd, '$H:$i') IS NULL;

SELECT 
    Time_Orderd, COUNT(*) AS total_rows
FROM
    zomato_analysis
GROUP BY Time_Orderd
ORDER BY total_rows DESC;

SELECT 
    COUNT(*) AS decimal_time_ordered
FROM
    zomato_analysis
WHERE
    Time_Orderd IS NOT NULL
        AND Time_Orderd REGEXP '^[0-9]+(.[0-9]+)?$';

SELECT 
    Time_Orderd,
    SEC_TO_TIME(Time_Orderd * 86400) AS converted_time_ordered
FROM
    zomato_analysis
WHERE
    Time_Orderd REGEXP '^[0-9]+.[0-9]+$'
LIMIT 10;

SELECT 
    Time_Orderd,
    SEC_TO_TIME(ROUND(Time_Orderd * 86400)) AS converted_time
FROM
    zomato_analysis
WHERE
    Time_Orderd REGEXP '^[0-9]+.[0-9]+$'
LIMIT 10;

ALTER TABLE zomato_analysis
RENAME COLUMN Time_Ordered TO Time_Order;

UPDATE zomato_analysis 
SET 
    Time_Order = NULL
WHERE
    Time_Order = 'NaN';

SELECT 
    Time_Order
FROM
    zomato_analysis
WHERE
    Time_Order = 'NaN';

SELECT 
    Time_Order
FROM
    zomato_analysis;

UPDATE zomato_analysis 
SET 
    Time_Order = SEC_TO_TIME(ROUND(Time_Order * 86400))
WHERE
    Time_Order REGEXP '^[0-9]+.[0-9]+$';

ALTER TABLE zomato_analysis
MODIFY COLUMN Time_Order TIME;

DESCRIBE zomato_analysis;

SELECT 
    COUNT(*) AS decimal_time_order_picked
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked REGEXP '^[0-9]+(.[0-9]+)?$';
        
UPDATE zomato_analysis 
SET 
    Time_Order_picked = SEC_TO_TIME(ROUND(Time_Order_picked * 86400))
WHERE
    Time_Order_picked REGEXP '^[0-9]+.[0-9]+$';

SELECT 
    COUNT(*) AS remaining_decimal_times
FROM
    zomato_analysis
WHERE
    Time_Order_picked REGEXP '^[0-9]+.[0-9]+$';

SELECT 
    COUNT(*) AS remaining_nan
FROM
    zomato_analysis
WHERE
    Time_Order_picked = 'NaN';

SELECT 
    Time_Order_picked, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
GROUP BY Time_Order_picked
ORDER BY total_rows DESC;

UPDATE zomato_analysis 
SET 
    Time_Order_picked = LEFT(Time_Order_picked, 8)
WHERE
    Time_Order_picked REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9].000000$';

SELECT 
    Time_Order_picked, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$'
GROUP BY Time_Order_picked
ORDER BY total_rows DESC;

UPDATE zomato_analysis 
SET 
    Time_Order_picked = NULL
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$';

SELECT 
    Time_Order_picked, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Time_Order_picked IS NOT NULL
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]$'
        AND Time_Order_picked NOT REGEXP '^([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$'
GROUP BY Time_Order_picked;

ALTER TABLE zomato_analysis
MODIFY COLUMN Time_Order_picked TIME;

DESCRIBE zomato_analysis;

SELECT 
    ID, COUNT(*) AS duplicates
FROM
    zomato_analysis
GROUP BY ID
HAVING COUNT(*) > 1;

SELECT 
    Type_of_vehicle
FROM
    zomato_analysis
GROUP BY Type_of_vehicle;

SELECT 
    Type_of_order
FROM
    zomato_analysis
GROUP BY Type_of_order;

SELECT 
    Weather_conditions
FROM
    zomato_analysis
GROUP BY Weather_conditions;

SELECT 
    Road_traffic_density
FROM
    zomato_analysis
GROUP BY Road_traffic_density;

SELECT 
    Festival
FROM
    zomato_analysis
GROUP BY Festival;

SELECT 
    City
FROM
    zomato_analysis
GROUP BY City;

ALTER TABLE zomato_analysis
RENAME COLUMN Delivery_person_Age TO Delivery_person_age;

ALTER TABLE zomato_analysis
RENAME COLUMN Delivery_person_rating TO Delivery_person_ratings;

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    MIN(Delivery_person_age) AS min_delivery_age,
    MAX(Delivery_person_age) AS max_delivery_age
FROM
    zomato_analysis;

SELECT 
    MIN(Delivery_person_ratings) AS min_delivery_ratings,
    MAX(Delivery_person_ratings) AS max_delivery_ratings
FROM
    zomato_analysis;

SELECT 
    Delivery_person_ratings, COUNT(*) AS total_rows
FROM
    zomato_analysis
WHERE
    Delivery_person_ratings = 6;

SELECT 
    ID,
    Delivery_person_age,
    Delivery_person_ratings,
    Vehicle_condition,
    Type_of_vehicle
FROM
    zomato_analysis
WHERE
    Delivery_person_ratings = 6;

UPDATE zomato_analysis 
SET 
    Delivery_person_ratings = NULL
WHERE
    Delivery_person_ratings = 6;

SELECT 
    MIN(Delivery_person_ratings) AS min_delivery_ratings,
    MAX(Delivery_person_ratings) AS max_delivery_ratings
FROM
    zomato_analysis;

SELECT 
    MIN(Vehicle_condition) AS min_vehicle_condition,
    MAX(Vehicle_condition) AS max_vehicle_condition
FROM
    zomato_analysis;

ALTER TABLE zomato_analysis
add column Rating_rounded int;

UPDATE zomato_analysis 
SET 
    Rating_rounded = ROUND(Delivery_person_ratings);

SELECT 
    Rating_rounded
FROM
    zomato_analysis
GROUP BY Rating_rounded;

SELECT 
    COUNT(*) AS outside_range
FROM
    zomato_analysis
WHERE
    Vehicle_condition < 0
        OR Vehicle_condition > 3;

SELECT 
    Delivery_person_age, COUNT(*) AS missing_rows
FROM
    zomato_analysis
WHERE
    Delivery_person_age IS NULL
GROUP BY Delivery_person_age;

SELECT 
    COUNT(*) AS missing_ratings
FROM
    zomato_analysis
WHERE
    Delivery_person_ratings IS NULL;

describe zomato_analysis;

alter table zomato_analysis
rename column `Time_taken (min)` to time_taken;

SELECT 
    *
FROM
    zomato_analysis;

SELECT 
    MIN(time_taken) AS min_time_taken,
    MAX(time_taken) AS max_time_taken
FROM
    zomato_analysis;

SELECT 
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    time_taken IS NULL;

SELECT 
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Multiple_deliveries IS NULL;

SELECT 
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Type_of_vehicle IS NULL;

SELECT 
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Weather_conditions IS NULL;

SELECT 
    Weather_conditions,
    Vehicle_condition,
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Weather_conditions IS NULL
GROUP BY Weather_conditions , Vehicle_condition;

SELECT 
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Road_traffic_density IS NULL;

SELECT 
    Weather_conditions,
    Road_traffic_density,
    COUNT(*) AS missing_values
FROM
    zomato_analysis
WHERE
    Road_traffic_density IS NULL
GROUP BY Weather_conditions , Road_traffic_density;

SELECT 
    COUNT(*) AS missing_city
FROM
    zomato_analysis
WHERE
    Weather_conditions IS NULL
        AND Road_traffic_density IS NULL
        AND City IS NULL;

SELECT 
    SUM(CASE
        WHEN City IS NULL THEN 1
        ELSE 0
    END) AS missing_city,
    SUM(CASE
        WHEN Weather_conditions IS NULL THEN 1
        ELSE 0
    END) AS missing_weather_conditions,
    SUM(CASE
        WHEN Road_traffic_density IS NULL THEN 1
        ELSE 0
    END) AS missing_rtd,
    SUM(CASE
        WHEN Festival IS NULL THEN 1
        ELSE 0
    END) AS missing_festival,
    SUM(CASE
        WHEN Multiple_deliveries IS NULL THEN 1
        ELSE 0
    END) AS missing_md,
    SUM(CASE
        WHEN Type_of_vehicle IS NULL THEN 1
        ELSE 0
    END) AS missing_tov,
    SUM(CASE
        WHEN Vehicle_condition IS NULL THEN 1
        ELSE 0
    END) AS missing_vc,
    SUM(CASE
        WHEN Delivery_person_age IS NULL THEN 1
        ELSE 0
    END) AS missing_dpa,
    SUM(CASE
        WHEN Delivery_person_ratings IS NULL THEN 1
        ELSE 0
    END) AS missing_dpa,
    SUM(CASE
        WHEN time_taken IS NULL THEN 1
        ELSE 0
    END) AS missing_tk
FROM
    zomato_analysis;

SELECT Festival, COUNT(*) as total_rows
from zomato_analysis
group by Festival;

select Festival, avg(time_taken) as avg_tk, count(*) as total_rows
from zomato_analysis
group by Festival;

select sum(case when City is null then 1 else 0 end) as missing_city,
		sum(case when Weather_conditions is null then 1 else 0 end) as missing_wc,
        sum(case when Road_traffic_density is null then 1 else 0 end) as missing_rtc,
        sum(case when Delivery_person_age is null then 1 else 0 end) as missing_dpa,
        count(*) as total_rows
from zomato_analysis
where Festival is null;

update zomato_analysis
SET
	City = coalesce(City, 'Unknown'),
    Weather_conditions = coalesce(Weather_conditions, 'Unknown'),
    Road_traffic_density = coalesce(Road_traffic_density, 'Unknown'),
    Festival = coalesce(Festival, 'Unknown');

select sum(case when City is null then 1 else 0 end) as missing_city,
		sum(case when Weather_conditions is null then 1 else 0 end) as missing_wc,
        sum(case when Road_traffic_density is null then 1 else 0 end) as missing_rtc,
        sum(case when Delivery_person_age is null then 1 else 0 end) as missing_dpa,
        sum(case when Festival is null then 1 else 0 end) as missing_festival,
        count(*) as total_rows
from zomato_analysis;

select * from zomato_analysis;

select
	min(Delivery_person_age) as min_dpa,
    max(Delivery_person_age) as max_dpa,
    min(Delivery_person_ratings) as min_dpr,
    max(Delivery_person_ratings) as max_dpr,
    min(Vehicle_condition) as min_vc,
    max(Vehicle_condition) as max_vc,
    min(time_taken) as min_tk,
    max(time_taken) as max_tk
from zomato_analysis;

describe zomato_analysis;

SELECT
	sum(case when ID is null then 1 else 0 end) as missing_id,
    sum(case when Delivery_person_ID is null then 1 else 0 end) as missing_dpid,
    count(*) as total_number
from zomato_analysis;

# Exploratory Data Analysis (EDA)
# Main KPI is Average delivery time (time_taken)

# Calculate the overall average delivery time
select avg(time_taken) as avg_time_taken
from zomato_analysis;

# Investigate the traffic
select * from zomato_analysis;

select Road_traffic_density, avg(time_taken) as avg_time_taken, count(*) as total_orders
FROM zomato_analysis
group by Road_traffic_density
order by avg_time_taken DESC;

# Does having multiple deliveries affect delivery time?
select Multiple_deliveries, avg(time_taken) as avg_time_taken, COUNT(*) AS total_order
from zomato_analysis
group by Multiple_deliveries
order by avg_time_taken DESC;

# Does weather conditions affect delivery time?
select Weather_conditions, avg(time_taken) as avg_time_taken, COUNT(*) AS total_order
from zomato_analysis
group by Weather_conditions
order by avg_time_taken DESC;

# Do vehicle_type and order type appear to be associated with difference in delivery time?
select Type_of_vehicle, Type_of_order, avg(time_taken) as avg_time_taken, count(*) as total_orders
from zomato_analysis
group by Type_of_vehicle, Type_of_order
order by avg_time_taken DESC;

select * from zomato_analysis;

# Does the age of the delivery person appear to be associated with longer or shorter delivery times?

SELECT
    CASE
        WHEN Delivery_person_age BETWEEN 15 AND 20 THEN '15-20'
        WHEN Delivery_person_age BETWEEN 21 AND 25 THEN '21-25'
        WHEN Delivery_person_age BETWEEN 26 AND 30 THEN '26-30'
        WHEN Delivery_person_age BETWEEN 31 AND 35 THEN '31-35'
        WHEN Delivery_person_age BETWEEN 36 AND 40 THEN '36-40'
        WHEN Delivery_person_age BETWEEN 41 AND 45 THEN '41-45'
        WHEN Delivery_person_age BETWEEN 46 AND 50 THEN '46-50'
        ELSE 'Unknown'
    END AS Age_band,
    AVG(time_taken) AS avg_time_taken,
    COUNT(*) AS total_orders
FROM zomato_analysis
GROUP BY
    CASE
        WHEN Delivery_person_age BETWEEN 15 AND 20 THEN '15-20'
        WHEN Delivery_person_age BETWEEN 21 AND 25 THEN '21-25'
        WHEN Delivery_person_age BETWEEN 26 AND 30 THEN '26-30'
        WHEN Delivery_person_age BETWEEN 31 AND 35 THEN '31-35'
        WHEN Delivery_person_age BETWEEN 36 AND 40 THEN '36-40'
        WHEN Delivery_person_age BETWEEN 41 AND 45 THEN '41-45'
        WHEN Delivery_person_age BETWEEN 46 AND 50 THEN '46-50'
        ELSE 'Unknown'
    END
ORDER BY Age_band, avg_time_taken DESC;

USE zomato_project;

# How do traffic conditions and multiple deliveries jointly relate to delivery time?
select Road_traffic_density,
		Multiple_deliveries,
        avg(time_taken) as avg_time_taken,
        count(*) as total_orders
from zomato_analysis
group by Road_traffic_density, Multiple_deliveries
order by avg_time_taken DESC;

describe zomato_analysis;

select
	sum(case when Order_Date is null then 1 else 0 end) as missing_od,
    sum(case when Time_order is null then 1 else 0 end) as missing__to,
    sum(case when Time_Order_picked is null then 1 else 0 end) as missing_top,
    sum(case when Weather_conditions is null then 1 else 0 end) as missing_wc,
    sum(case when Road_traffic_density is null then 1 else 0 end) as missing_rtd,
    sum(case when Vehicle_condition is null then 1 else 0 end) as missing_vc,
    sum(case when Type_of_order is null then 1 else 0 end) as missing_toor,
    sum(case when Type_of_vehicle is null then 1 else 0 end) as missing_tov,
    sum(case when Multiple_deliveries is null then 1 else 0 end) as missing_md,
    sum(case when Festival is null then 1 else 0 end) as missing_f,
    sum(case when City is null then 1 else 0 end) as missing_c,
    sum(case when time_taken is null then 1 else 0 end) as missing_tk,
    count(*) as total_orders
from zomato_analysis;

SELECT
    SUM(CASE WHEN Time_order IS NULL THEN 1 ELSE 0 END) AS missing_to,
    SUM(CASE WHEN Time_order_picked IS NULL THEN 1 ELSE 0 END) AS missing_top,
    SUM(CASE WHEN Time_order IS NULL AND Time_order_picked IS NULL THEN 1 ELSE 0 END) AS both_missing,
    SUM(CASE WHEN Time_order IS NULL AND Time_order_picked IS NOT NULL THEN 1 ELSE 0 END) AS order_only_missing,
    SUM(CASE WHEN Time_order IS NOT NULL AND Time_order_picked IS NULL THEN 1 ELSE 0 END) AS picked_only_missing,
    COUNT(*) AS total_orders
FROM zomato_analysis;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT ID) AS unique_ids,
    COUNT(*) - COUNT(DISTINCT ID) AS duplicate_id_rows
FROM zomato_analysis;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE
        WHEN Time_order IS NOT NULL
         AND Time_order_picked IS NOT NULL
        THEN 1 ELSE 0
    END) AS both_available,
    SUM(CASE
        WHEN Time_order IS NOT NULL
         AND Time_order_picked IS NOT NULL
         AND Time_order_picked < Time_order
        THEN 1 ELSE 0
    END) AS picked_before_order
FROM zomato_analysis;

SELECT
    MIN(time_taken) AS min_time_taken,
    MAX(time_taken) AS max_time_taken,
    SUM(CASE
        WHEN time_taken < 10 OR time_taken > 54
        THEN 1 ELSE 0
    END) AS outside_expected_range
FROM zomato_analysis;

SELECT
    City,
    AVG(time_taken) AS avg_time_taken,
    COUNT(*) AS total_orders
FROM zomato_analysis
GROUP BY City
ORDER BY avg_time_taken DESC;

select Weather_conditions,
		Road_traffic_density,
        avg(time_taken) as avg_tk,
        count(*) as total_orders
from zomato_analysis
group by Weather_conditions, Road_traffic_density
order by avg_tk desc;

select Festival,
	avg(time_taken) as avg_tk,
    count(*) as total_orders
from zomato_analysis
group by Festival
order by avg_tk desc;

select Vehicle_condition,
	avg(time_taken) as avg_tk,
    count(*) as total_orders
from zomato_analysis
group by Vehicle_condition
order by avg_tk desc;

select Type_of_vehicle,
	avg(time_taken) as avg_tk,
    count(*) as total_orders
from zomato_analysis
group by Type_of_vehicle
order by avg_tk desc;

select * from zomato_analysis;

select Rating_rounded,
	avg(time_taken) as avg_tk,
    count(*) as total_orders
from zomato_analysis
group by Rating_rounded
order by avg_tk desc;

select count(*) as total_orders,
		avg(time_taken) as avg_tk,
        avg(Rating_rounded) as avg_rating,
        avg(Delivery_person_age) as avg_dpa,
        avg(Vehicle_condition) as avg_vc
from zomato_analysis;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT ID) AS unique_ids,
       MIN(Order_Date) AS earliest_order,
       MAX(Order_Date) AS latest_order
FROM zomato_analysis;

select * from zomato_analysis;

select avg(Rating_rounded) as avg_ratings
from zomato_analysis;