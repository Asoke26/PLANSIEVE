SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=2002.0 AND 
mi.info_type_id=2 AND 
mi_idx.info_type_id=100 AND 
t.kind_id=4 AND 
t.phonetic_code='M2521' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;