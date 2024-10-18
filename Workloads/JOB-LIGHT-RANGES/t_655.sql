SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code='M2145' AND 
t.kind_id=1 AND 
t.production_year=2002.0 AND 
ci.role_id=1 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;