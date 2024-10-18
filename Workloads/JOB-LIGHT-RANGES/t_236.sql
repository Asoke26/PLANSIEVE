SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code>='C6524' AND 
mi.info_type_id=16 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.production_year=2012.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;