{{ config(materialized='table') }}


with source_data as (

    select 1 as id
    union all
    select null as id

)

select *, {{ var('my_first_variable') }} as first_variable 
from source_data
where id >= {{ var('my_third_variable') }}

