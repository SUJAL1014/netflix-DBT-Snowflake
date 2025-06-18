{{
    config (
        materialized = 'table'
    )
}}


with fact_ratings as(
    select * from {{ ref('fct_ratings') }}
),

seed_date as(
    select * from {{ ref('seed_movie_release_date') }}
)

select 
    f.*,
    CASE 
        WHEN d.release_date is null  then 'Unknown'
        ELSE 'known'
    end as release_date_avilable
from fact_ratings f
LEFT JOIN seed_date d
ON f.movie_id = d.movie_id
