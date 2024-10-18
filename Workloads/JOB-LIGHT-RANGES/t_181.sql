SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.season_nr=5.0 AND 
t.production_year>=1997.0 AND 
t.episode_nr<=6.0 AND 
t.phonetic_code<='L2524' AND 
mk.keyword_id=5360 AND 
t.kind_id=7 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;