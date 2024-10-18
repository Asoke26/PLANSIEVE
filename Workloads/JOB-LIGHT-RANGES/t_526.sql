SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='S1365' AND 
t.production_year<=2004.0 AND 
t.kind_id=1 AND 
mk.keyword_id=714 AND 
mi_idx.info_type_id=99 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;