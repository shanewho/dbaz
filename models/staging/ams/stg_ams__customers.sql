with source_data as (

    select * from {{ source('lake_ams', 'ams__customers') }}
)

select *
from source_data
