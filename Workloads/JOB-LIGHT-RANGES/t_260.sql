SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=16 AND 
t.phonetic_code>='B4262' AND 
t.production_year>=1977.0 AND 
mc.company_type_id=1 AND 
t.kind_id=4 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;