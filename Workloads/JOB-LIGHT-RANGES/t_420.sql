SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.kind_id=3 AND 
t.production_year>=2006.0 AND 
ci.role_id=10 AND 
t.phonetic_code>='I5353' AND 
mc.company_type_id=2 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;