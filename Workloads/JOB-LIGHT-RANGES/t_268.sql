SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code>='F5425' AND 
t.production_year=1981.0 AND 
mi.info_type_id=57 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;