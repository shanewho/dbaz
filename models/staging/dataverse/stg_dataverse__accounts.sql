{{ config(materialized='view') }}

with source_data as (

    select * from {{ source('lake_dataverse', 'dataverse__accounts') }}
)

select *
from source_data

