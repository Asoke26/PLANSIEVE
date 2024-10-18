SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=2010.0 AND 
ci.role_id=3 AND 
t.season_nr=2.0 AND 
t.kind_id=7 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;