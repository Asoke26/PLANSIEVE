SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.kind_id=1 AND 
ci.role_id=7 AND 
mc.company_type_id=2 AND 
t.production_year>=2000.0 AND 
t.phonetic_code='A2154' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;