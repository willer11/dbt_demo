/*select * from {{ source('demo', 'weather') }};

select * from {{ source('demo', 'bike') }};*/
with CTE AS (
select * from {{ ref('my_second_dbt_model') }}
)

select * from CTE