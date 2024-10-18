SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.phonetic_code>='T25' AND 
mc.company_type_id=2 AND 
t.production_year=1980.0 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;