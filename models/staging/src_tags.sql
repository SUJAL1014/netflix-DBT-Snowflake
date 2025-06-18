{{ config (materialized='table') }}

with  raw_tags as(
    select * from MOVIELENS.RAW.RAW_TAGS
)

SELECT
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
FROM raw_tags