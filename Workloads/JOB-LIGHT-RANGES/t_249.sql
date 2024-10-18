SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
t.production_year>=2008.0 AND 
t.phonetic_code>='H6356' AND 
mi.info_type_id=94 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;