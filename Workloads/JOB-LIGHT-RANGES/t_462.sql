SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=100 AND 
mc.company_type_id=2 AND 
t.phonetic_code<='B2521' AND 
t.production_year>=2009.0 AND 
mi.info_type_id=105 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;