SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code>='S21' AND 
t.kind_id=1 AND 
t.production_year=2012.0 AND 
mk.keyword_id=335 AND 
mi_idx.info_type_id=100 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;