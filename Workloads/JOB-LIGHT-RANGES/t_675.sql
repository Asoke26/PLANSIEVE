SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi.info_type_id=6 AND 
mi_idx.info_type_id=100 AND 
ci.nr_order>=9.0 AND 
t.production_year>=1998.0 AND 
t.episode_nr=2.0 AND 
t.season_nr=1.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;