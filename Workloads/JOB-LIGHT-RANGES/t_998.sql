SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=4 AND 
t.phonetic_code='P63' AND 
t.episode_nr>=3.0 AND 
mk.keyword_id=8288 AND 
t.production_year<=1988.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;