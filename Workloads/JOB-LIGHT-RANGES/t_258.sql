SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year>=2000.0 AND 
t.phonetic_code>='T642' AND 
mi.info_type_id=16 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;