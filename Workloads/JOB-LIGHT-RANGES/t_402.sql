SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year=2010.0 AND 
ci.role_id=10 AND 
mc.company_type_id=1 AND 
t.phonetic_code<='S35' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;