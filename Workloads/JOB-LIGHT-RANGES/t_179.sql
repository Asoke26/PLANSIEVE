SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code>='P4523' AND 
t.episode_nr=1.0 AND 
mi_idx.info_type_id=99 AND 
t.season_nr=8.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;