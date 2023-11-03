{{ 
    config(
        materialized='view',
        unique_key='CUSTOMERID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH city_wise_customer_demographics_pdt_data AS (
    SELECT 
        CITY,
        COUNT(CUSTOMERID) AS Total_Customers,
        SUM(QTY_PDT_BOUGHT) AS Total_Quantity_Bought, -- Sum/Adds all the qu 
        SUM(VOLUME_PDT_BOUGHT) AS Total_Volume_Bought
    FROM 
        {{ ref("ALTC_CUSTOMER_DEMOGRAPHIC_PRODUCTS") }} 
    GROUP BY CITY
    ORDER BY TOTAL_CUSTOMERS DESC
)

SELECT * FROM city_wise_customer_demographics_pdt_data
                                                                                                                    


                                                                                                               