{{
    config (
        materialized = 'ephemeral'
    )
}}

WITH movies as (
    SELECT * FROM {{ ref('dim_movies') }}
),

tags as(
    SELECT * FROM {{ ref('dim_genome_tags') }}
),


score as (
    SELECT * FROM {{ ref('fct_genome_scores') }}
)