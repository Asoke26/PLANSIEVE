SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi.info_type_id=110 AND 
mc.company_type_id=1 AND 
mi_idx.info_type_id=101 AND 
t.production_year<=2002.0 AND 
t.phonetic_code<='U5131' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;