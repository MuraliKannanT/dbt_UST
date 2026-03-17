{{ config(group='sales') }}
select * from {{ ref('stg_nations') }}