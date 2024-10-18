SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.production_year<=2012.0 AND 
t.season_nr=2.0 AND 
t.episode_nr>=8.0 AND 
t.phonetic_code>='N162' AND 
mi_idx.info_type_id=101 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;