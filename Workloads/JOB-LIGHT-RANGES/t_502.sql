SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code>='N3252' AND 
mi_idx.info_type_id=99 AND 
t.kind_id=1 AND 
mk.keyword_id=5148 AND 
mi.info_type_id=16 AND 
t.production_year<=2006.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;