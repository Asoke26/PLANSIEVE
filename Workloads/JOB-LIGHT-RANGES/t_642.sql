SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code='B4252' AND 
ci.role_id=1 AND 
mc.company_type_id=1 AND 
t.production_year>=1948.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;