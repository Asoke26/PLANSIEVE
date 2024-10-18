SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=7 AND 
t.season_nr>=1.0 AND 
t.episode_nr>=4.0 AND 
t.production_year=1993.0 AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;