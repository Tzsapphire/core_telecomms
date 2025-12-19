with raw_agents_dataset as (
    select * from {{source("raw", "AGENTS_DATASET")}}
)

select r."iD" as agent_id, 
       r."NamE" as agent_name, 
       initcap(r."experience") as agent_experience, 
       r."state" as agent_state 
from raw_agents_dataset r

