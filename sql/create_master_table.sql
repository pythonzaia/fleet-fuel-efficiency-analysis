# Import the 3 tables
SELECT  *
FROM vehicle_inventory
;

SELECT  *
FROM miles_driven
;

SELECT  *
FROM gallons_purchased
;

# Unpivot table for better visualization of data in miles_driven

SELECT VIN, 2014 AS year, `2014` AS miles FROM miles_driven
UNION ALL
SELECT VIN, 2015, `2015` FROM miles_driven
UNION ALL
SELECT VIN, 2016, `2016` FROM miles_driven
UNION ALL
SELECT VIN, 2017, `2017` FROM miles_driven
UNION ALL
SELECT VIN, 2018, `2018` FROM miles_driven
UNION ALL
SELECT VIN, 2019, `2019` FROM miles_driven;


# Unpivot table for better visualization of data in gallons_purchased

SELECT VIN, 2014 AS year, `2014` AS gallons FROM gallons_purchased
UNION ALL
SELECT VIN, 2015, `2015` FROM gallons_purchased
UNION ALL
SELECT VIN, 2016, `2016` FROM gallons_purchased
UNION ALL
SELECT VIN, 2017, `2017` FROM gallons_purchased
UNION ALL
SELECT VIN, 2018, `2018` FROM gallons_purchased
UNION ALL
SELECT VIN, 2019, `2019` FROM gallons_purchased;


# Create a Temporary table to save the unpivot table's JOIN
CREATE TEMPORARY TABLE master_table1
SELECT
    vi.VIN,
    vi.Make,
    vi.Model,
    miles.year,
    miles.miles,
    gallons.gallons
    
FROM
    vehicle_inventory vi
JOIN (
    SELECT VIN, 2014 AS year, `2014` AS miles FROM miles_driven
    UNION ALL
    SELECT VIN, 2015, `2015` FROM miles_driven
    UNION ALL
    SELECT VIN, 2016, `2016` FROM miles_driven
    UNION ALL
    SELECT VIN, 2017, `2017` FROM miles_driven
    UNION ALL
    SELECT VIN, 2018, `2018` FROM miles_driven
    UNION ALL
    SELECT VIN, 2019, `2019` FROM miles_driven
) AS miles ON vi.VIN = miles.VIN
JOIN (
    SELECT VIN, 2014 AS year, `2014` AS gallons FROM gallons_purchased
    UNION ALL
    SELECT VIN, 2015, `2015` FROM gallons_purchased
    UNION ALL
    SELECT VIN, 2016, `2016` FROM gallons_purchased
    UNION ALL
    SELECT VIN, 2017, `2017` FROM gallons_purchased
    UNION ALL
    SELECT VIN, 2018, `2018` FROM gallons_purchased
    UNION ALL
    SELECT VIN, 2019, `2019` FROM gallons_purchased
) AS gallons ON miles.VIN = gallons.VIN AND miles.year = gallons.year
HAVING miles !=0 AND gallons!=0
ORDER BY year ASC, miles ASC
;

# Query all data from master_table1 and save as "fuel_case_ study_master_table"

SELECT  *
	
FROM master_table1;