
-- Use the `ref` function to select from other models
select *
from {{ ref('my_first_dbt_model') }}
--UNION ALL
--SELECT 7 as id
