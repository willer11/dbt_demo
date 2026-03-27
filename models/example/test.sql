select * from {{ source('demo', 'weather') }};

select * from {{ source('demo', 'bike') }};

select * from {{ ref('my_second_dbt_model') }};