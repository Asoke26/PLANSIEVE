SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code>='T351' AND 
t.production_year=1974.0 AND 
t.kind_id=1 AND 
ci.role_id=10 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;