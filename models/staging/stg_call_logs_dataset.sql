with call_logs as (
    select * from {{source("raw", "CALL_LOGS_DATASET")}}
)

SELECT    
        "column0" AS call_number,
        "call ID" AS call_id,
        "customeR iD" AS customer_id,
        "COMPLAINT_catego ry" AS complaint_category,
        "agent ID" AS agent_id,
        "call_start_time" AS call_start_time,
        "call_end_time" AS call_end_time,
        "resolutionstatus" AS resolution_status,
        "callLogsGenerationDate" AS call_logs_generation_date

FROM call_logs