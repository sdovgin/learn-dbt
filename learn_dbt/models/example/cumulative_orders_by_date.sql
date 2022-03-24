select distinct
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales

from 
(
  SELECT *
  FROM {{ source('sample', 'orders') }}
)
order by o_orderdate