SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.phonetic_code='I5364' AND 
t.kind_id=1 AND 
t.production_year<=1957.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;