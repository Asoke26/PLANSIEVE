SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.episode_nr<=5.0 AND 
mi.info_type_id=18 AND 
t.kind_id=7 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;