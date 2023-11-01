{{ 
    config(
        materialized='incremental',
        unique_key='CUSTOMERID'
    ) 
}} -- Use table if you want to create a new table and increment if you want to append


WITH customer_src_data AS (
    SELECT * FROM {{ source("src_raw", "CUSTOMER") }}
)

SELECT * FROM customer_src_data


{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records arriving later on the same day as the last run of this model)
  WHERE CREATED_AT >= (select max(CREATED_AT) from {{ this }})
        OR UPDATED_AT > (select max(CREATED_AT) from {{ this }})

{% endif %}

ORDER BY CREATED_AT ASC