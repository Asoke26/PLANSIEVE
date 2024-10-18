SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code>='F42' AND 
t.production_year<=2007.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;