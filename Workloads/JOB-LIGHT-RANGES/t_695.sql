SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi.info_type_id=4 AND 
t.phonetic_code<='B6516' AND 
t.episode_nr<=10.0 AND 
mi_idx.info_type_id=99 AND 
t.production_year<=1972.0 AND 
t.season_nr>=5.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;