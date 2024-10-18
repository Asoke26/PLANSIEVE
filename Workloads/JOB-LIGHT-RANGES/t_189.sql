SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=1936.0 AND 
mi_idx.info_type_id=101 AND 
t.phonetic_code>='B43' AND 
mk.keyword_id=3600 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;