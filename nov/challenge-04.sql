/**
* Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
* Truncate your answer to  decimal places.
*/

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

/**
* Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7881 and less than 137.2344. 
* Truncate your answer to  decimal places.
*/

SELECT ROUND(SUM(LAT_N), 4) AS Sum_Northern_Latitudes
FROM STATION
WHERE LAT_N BETWEEN 38.7881 AND 137.2344;

/**
* Query the following two values from the STATION table:
* - The sum of all values in LAT_N rounded to a scale of  decimal places.
* - The sum of all values in LONG_W rounded to a scale of  decimal places.
*/

SELECT 
    ROUND(SUM(LAT_N), 2) AS Total_Latitude,
    ROUND(SUM(LONG_W), 2) AS Total_Longitude
FROM STATION;
