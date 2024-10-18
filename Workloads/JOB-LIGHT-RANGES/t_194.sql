SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=2 AND 
mk.keyword_id=10093 AND 
t.series_years='2002-????' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;