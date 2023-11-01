{{ 
    config(
        materialized='incremental',
        unique_key='PRODUCTID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH product_profitability_data AS (
    SELECT 
        p.ProductID,
        p.Name AS Product_Name,
        b.Name AS Brand_Name,
        SUM(s.SaleAmount) AS Total_Revenue,
        SUM(s.Quantity) AS Total_Sold,
        (SUM(s.SaleAmount) - ROUND((SUM(s.SaleAmount) / SUM(s.Quantity)) - 2, 2)) AS Total_Profit -- Just some query, don't pay any attention here
    FROM 
        {{ ref("INCR_PRODUCT") }} p   
    JOIN {{ref("INCR_SALES")}} s ON p.PRODUCTID = s.PRODUCTID
    JOIN {{ref("INCR_BRAND")}} b ON p.BRANDID = b.BRANDID   
    GROUP BY ALL          
    ORDER BY Total_Profit DESC   
)

SELECT * FROM product_profitability_data
                                                                                                                       
                                