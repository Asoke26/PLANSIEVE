SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=101 AND 
t.phonetic_code<='K4261' AND 
t.season_nr=4.0 AND 
t.episode_nr>=6.0 AND 
mi.info_type_id=6 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;