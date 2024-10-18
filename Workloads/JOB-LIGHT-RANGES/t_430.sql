SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code<='T5264' AND 
ci.role_id=4 AND 
t.kind_id=1 AND 
t.production_year>=2000.0 AND 
mc.company_type_id=2 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;