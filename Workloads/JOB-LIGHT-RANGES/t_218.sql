SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=3426 AND 
mi_idx.info_type_id=99 AND 
t.phonetic_code<='B362' AND 
t.episode_nr=4.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;