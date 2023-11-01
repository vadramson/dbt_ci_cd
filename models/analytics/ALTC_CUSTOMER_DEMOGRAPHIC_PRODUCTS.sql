{{ 
    config(
        materialized='incremental',
        unique_key='CUSTOMERID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH customer_demographics_pdt_data AS (
    SELECT 
        cdp.*,
        COUNT(s.SALEAMOUNT) AS QTY_PDT_BOUGHT,
        SUM(s.SALEAMOUNT) AS VOLUME_PDT_BOUGHT
    FROM 
        {{ ref("ALTC_CUSTOMER_DEMOGRAPHIC") }} cdp   
    JOIN {{ref("INCR_SALES")}} s ON cdp.CUSTOMERID = s.CUSTOMERID
    GROUP BY ALL          
    --ORDER BY Total_Profit DESC   
)

SELECT * FROM customer_demographics_pdt_data
                                                                                                                    