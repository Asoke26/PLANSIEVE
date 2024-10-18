SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi.info_type_id=15 AND 
mc.company_type_id=1 AND 
t.production_year<=1986.0 AND 
t.phonetic_code='S6326' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;