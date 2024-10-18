SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=2 AND 
t.production_year<=1995.0 AND 
t.season_nr>=8.0 AND 
t.episode_nr>=8.0 AND 
mi.info_type_id=15 AND 
t.kind_id=7 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;