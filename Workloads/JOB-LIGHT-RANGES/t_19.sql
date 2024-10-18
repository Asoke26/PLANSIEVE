SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.episode_nr=5.0 AND 
t.kind_id=7 AND 
mc.company_type_id=1 AND 
t.phonetic_code<='H123' AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;