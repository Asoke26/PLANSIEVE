SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code='T2436' AND 
mi_idx.info_type_id=101 AND 
mc.company_type_id=2 AND 
t.kind_id=1 AND 
t.production_year=2011.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;