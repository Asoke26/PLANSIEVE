SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=112 AND 
t.production_year>=1976.0 AND 
t.phonetic_code>='R2' AND 
mk.keyword_id=7579 AND 
t.kind_id=1 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;