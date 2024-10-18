SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=107 AND 
t.production_year>=2006.0 AND 
t.phonetic_code>='S52' AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;