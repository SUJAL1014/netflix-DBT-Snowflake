WITH src_movies AS (
    SELECT * FROM {{ ref('src_movies') }}
)

SELECT
    movie_id,
    INITCAP(TRIM(title)) as movie_title,
    SPLIT(genres, '|')  as genre_array,
    genres
FROM src_movies