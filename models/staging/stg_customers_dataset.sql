with customers_data as (
    select * from {{source("raw", "CUSTOMERS_DATASET")}}
)

SELECT    
        "customer_id" AS customer_id,
        "name" AS customer_name,
        "Gender" AS gender,
        "DATE of biRTH" AS date_of_birth,
        "signup_date" AS signup_date,
        "email" AS email,
        "address" AS customer_address
FROM customers_data


-- SELECT
--     {{ select_snake_case_columns(source('raw', 'CUSTOMERS_DATASET')) }}
-- FROM {{ source('raw', 'CUSTOMERS_DATASET') }}


