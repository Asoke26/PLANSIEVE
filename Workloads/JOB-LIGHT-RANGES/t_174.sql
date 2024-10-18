SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year>=1982.0 AND 
mk.keyword_id=2488 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;