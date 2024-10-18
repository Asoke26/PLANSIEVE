SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year=2003.0 AND 
t.kind_id=7 AND 
mi_idx.info_type_id=101 AND 
t.season_nr=1.0 AND 
t.episode_nr>=1.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;