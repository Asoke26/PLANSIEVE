SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=1 AND 
mi.info_type_id=17 AND 
mc.company_type_id=1 AND 
t.phonetic_code='T6123' AND 
t.production_year>=2008.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;