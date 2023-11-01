{{ config(materialized='incremental') }} -- Use table if you want to create a new table and increment if you want to append

SELECT *
FROM {{ ref('customers_agg') }}
WHERE 
TOTAL_REVENUE >= 246819.96
AND
PERIOD BETWEEN  '1997-05-01' AND '1997-06-30'
