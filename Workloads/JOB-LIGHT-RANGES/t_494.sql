SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year>=2008.0 AND 
t.episode_nr>=4.0 AND 
t.season_nr<=1.0 AND 
t.kind_id=7 AND 
t.phonetic_code<='B2136' AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;