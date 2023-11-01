{{ 
    config(
        materialized='incremental',
        unique_key='CUSTOMERID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH customer_demographics_data AS (
    SELECT 
        c.CustomerID,
        c.Name AS CustomerName,
        ci.Name AS City,
        co.Name AS Country
    FROM 
        {{ ref("INCR_CUSTOMER") }} c   
    JOIN {{ref("INCR_CITY")}} ci ON c.CityID = ci.CityID
    JOIN {{ref("INCR_COUNTRY")}} co ON c.CountryID = co.CountryID
    GROUP BY ALL          
)

SELECT * FROM customer_demographics_data
                                                                                                                    