SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi.info_type_id=16 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code='C4615' AND 
t.production_year=1994.0 AND 
mk.keyword_id=58234 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;