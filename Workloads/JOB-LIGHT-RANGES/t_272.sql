SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code='E625' AND 
t.production_year>=2006.0 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;