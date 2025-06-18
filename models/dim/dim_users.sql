with ratings as(
    select distinct user_id from {{ ref('src_ratings') }}
),

tags as (
    select distinct user_id from {{ ref('src_tags') }}
)

SELECT distinct user_id
FROM (
    select * from ratings
    union
    select * from tags
)