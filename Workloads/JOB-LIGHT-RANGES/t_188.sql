SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=101 AND 
mk.keyword_id=460 AND 
t.production_year>=1971.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;