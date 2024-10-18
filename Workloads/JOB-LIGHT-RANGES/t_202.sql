SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year>=1903.0 AND 
t.phonetic_code>='P2123' AND 
mi_idx.info_type_id=99 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;