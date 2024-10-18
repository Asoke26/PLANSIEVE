SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=100 AND 
mk.keyword_id=1135 AND 
t.kind_id=7 AND 
t.phonetic_code<='N2521' AND 
t.episode_nr<=12.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;