{{config (materialized = 'table')}}


with raw_ratings as(
    select * from MOVIELENS.RAW.RAW_RATINGS
)

SELECT
    userId as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
FROM raw_ratings