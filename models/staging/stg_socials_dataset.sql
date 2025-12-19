{{
        config(
            materialized='table'
        )
    }}


with socials_data as (
    select * from {{source("raw", "SOCIAL_DATASET")}}
)

SELECT
        "complaint_id" AS complaint_id,
        "customeR iD" AS customer_id,
        "COMPLAINT_catego ry" AS complaint_category,
        "agent ID" AS agent_id,
        "resolutionstatus" AS resolutionstatus,
        "request_date" AS request_date,
        "resolution_date" AS resolution_date,
        "media_channel" AS media_channel,
        "MediaComplaintGenerationDate" AS media_complaint_generation_date
FROM socials_data 
limit 10






