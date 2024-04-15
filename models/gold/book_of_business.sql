with policies as (

    select * from {{ ref('fct_policies') }}

),

customers as (

    select * from {{ ref('dim_customers') }}

)

select 
  policy_id,
  sold_date as policy_sold_date,
  effective_date as policy_effective_date,
  issue_state as policy_issue_state,
  zip_code as policy_zip_code,
  customer_id,
  name as customer_name,
  phone as customer_phone,
  address as customer_address

from policies
left join customers on policies.customer_id = customers.id
