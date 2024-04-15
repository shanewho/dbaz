{{ config(materialized='view') }}

--using a sample orders.csv to pretend to be policies

with source_data as (

    select * from {{ source('lake_ams', 'ams__policies') }}
)

select
orderID	as policy_id,
customerID as customer_id,
case when orderDate is null then null else convert(DATETIME, orderDate, 101) end as sold_date,
case when shippedDate is null then null else convert(DATETIME, orderDate, 101) end as effective_date,
shipRegion as issue_state,
shipPostalCode as zip_code
from source_data
