SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year=2007.0 AND 
mc.company_type_id=1 AND 
mi.info_type_id=16 AND 
t.phonetic_code>='S5351' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;