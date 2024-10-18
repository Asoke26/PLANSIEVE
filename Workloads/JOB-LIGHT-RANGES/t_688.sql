SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year=1985.0 AND 
t.season_nr<=2.0 AND 
mi.info_type_id=15 AND 
ci.role_id=1 AND 
mi_idx.info_type_id=101 AND 
t.phonetic_code='M2613' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;