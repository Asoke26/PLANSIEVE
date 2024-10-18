SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=7 AND 
t.season_nr=6.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code='T2512' AND 
t.episode_nr<=19.0 AND 
mi.info_type_id=17 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;