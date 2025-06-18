with src_scores as(
    select * from {{ ref('src_genome_score') }}
)

SELECT 
     movie_id,
     tag_id,
     ROUND(relevance,4) as revelance_score
from src_scores
where relevance > 0