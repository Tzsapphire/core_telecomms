-- {{
--         config(
--             materialized='table'
--         )
--     }}


with raw_agents_dataset as (
    select * from {{source("raw", "AGENTS_DATASET")}}
)

select r."iD" as agent_id, 
       r."NamE" as agent_name, 
       initcap(r."experience") as agent_experience, 
       r."state" as agent_state 
from raw_agents_dataset r

-- why do i have to put each i quotes?
-- SELECT
--     {{ select_snake_case_columns(source('raw', 'SOCIAL_DATASET')) }}
-- FROM {{ source('raw', 'SOCIAL_DATASET') }}
-- Was it going to be possible to move it to my own S3 bucket though it is out of that account? or not for security purposes?
-- I never named it raw anywhere and i said materialised as a view, but its materialising as a table?
-- i dont think socials parsed well as a parquet file, from the json file it was in 
-- why is the information schema columns showing different values? materialised as a view perhaps? yes
