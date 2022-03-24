with orders as (
  SELECT *
  FROM {{ source('sample', 'orders') }}
)

select distinct
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales

from orders
order by o_orderdate