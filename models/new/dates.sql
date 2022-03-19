/*
    Incremental model example; this model can be used to update the table
    with only new records
*/

{{ config(materialized='incremental', unique_key = 'd_date') }}

select *
from snowflake_sample_data.tpcds_sf10tcl.date_dim
where d_date <= current_date

{% if is_incremental() %}
    and d_date > (select max(d_date) from {{ this }})
{% endif %}