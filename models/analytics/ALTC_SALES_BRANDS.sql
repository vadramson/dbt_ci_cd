{{ 
    config(
        materialized='incremental',
        unique_key='BRANDID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH sales_brand_data AS (
    SELECT 
        b.BRANDID,
        b.NAME AS Brand_Name,
        SUM(s.SALEAMOUNT) AS Sales_Volume,
        COUNT(b.BRANDID) AS Qty_SOLD
    FROM 
        {{ ref("INCR_SALES") }} s   
    JOIN {{ref("INCR_PRODUCT")}} p ON s.PRODUCTID = p.PRODUCTID
    JOIN {{ref("INCR_BRAND")}} b ON p.BRANDID = b.BRANDID   
    GROUP BY ALL             
)

SELECT * FROM sales_brand_data
                                                                                                                       
                                

ORDER BY Sales_Volume DESC
