SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.episode_nr=3.0 AND 
mk.keyword_id=1962 AND 
t.season_nr>=3.0 AND 
t.phonetic_code<='E5365' AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;