SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=7 AND 
t.season_nr=2.0 AND 
mi_idx.info_type_id=99 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;