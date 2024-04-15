--query is prob wrong, just an example
with
accounts as (
    select
    customerId as id,
    name as name,
    phone as phone,
    address as address
    from {{ ref('stg_dataverse__accounts') }}
),
customers as (
 select
    customers.customerId as id,
    customers.contactName as name,
    customers.phone as phone,
    customers.address as address
    from {{ ref('stg_ams__customers') }} customers
    left join {{ ref('stg_dataverse__accounts') }} accounts on customers.phone = accounts.phone
    where accounts.customerID is null
)
select * from customers
      union
select * from accounts
