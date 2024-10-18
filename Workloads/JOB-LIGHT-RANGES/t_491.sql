SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=1 AND 
mi.info_type_id=16 AND 
mi_idx.info_type_id=101 AND 
t.phonetic_code<='D42' AND 
t.production_year=1998.0 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;