{{ config(materialized='table') }}
    
with source_data as (

    select * from {{ source('lake_dataverse', 'dataverse__sales') }}
)

select *
from source_data

