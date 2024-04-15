{{ config(materialized='table') }}

with policies as (

    select * from {{ ref('stg_ams__policies') }}

)
select * from policies
