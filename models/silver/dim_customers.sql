with customers as (

    select * from {{ ref('int__accounts_joined_to_customers') }}

)
select * from customers
