{{ config(materialized='table') }}

SELECT
  c_custkey,
  c_mktsegment,
  {{rename_segments('c_mktsegment')}} mkt_segment_adjusted
FROM {{ source('sample', 'customer') }}