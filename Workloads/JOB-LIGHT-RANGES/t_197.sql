SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=6115 AND 
t.kind_id=2 AND 
t.production_year=1998.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;