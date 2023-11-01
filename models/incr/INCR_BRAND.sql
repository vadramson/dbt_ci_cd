{{ 
    config(
        materialized='incremental',
        unique_key='BRANDID' 
    ) 
}} -- Use table if you want to create a new table and increment if you want to append
   -- Define unique key for UPSERT operations unique_key=['col1', 'col2', '...', 'coln'] OR unique_key = 'some_col'


WITH brand_src_data AS (
    SELECT 
        b.*, CURRENT_TIMESTAMP() AS PROCESSED_AT                                                                                                                                                                  
    FROM 
        {{ source("src_raw", "BRAND") }} b            
)

SELECT * FROM brand_src_data
                                                                                                                       
                                  
{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records arriving later on the same day as the last run of this model)
  WHERE CREATED_AT >= (select max(CREATED_AT) from {{ this }})
        OR UPDATED_AT > (select max(CREATED_AT) from {{ this }})

{% endif %}

ORDER BY CREATED_AT ASC