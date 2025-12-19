with web_forms_data as (
    select * from {{source("raw", "WEB_FORMS_DATASET")}}
)

SELECT    
        "Column1" AS web_form_number,
        "request_id" AS request_id,
        "customeR iD" AS customer_id,
        "COMPLAINT_catego ry" AS complaint_category,
        "agent ID" AS agent_id,
        "resolutionstatus" AS resolution_status,
        "request_date" AS request_date,
        coalesce("resolution_date", 'nil') AS resolution_date,
        "webFormGenerationDate" AS web_form_generation_date,
        "__index_level_0__" AS index_level_0_
FROM web_forms_data

