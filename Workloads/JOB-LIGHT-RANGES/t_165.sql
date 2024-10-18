SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=1940.0 AND 
mi_idx.info_type_id=99 AND 
t.kind_id=1 AND 
mk.keyword_id=6407 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;