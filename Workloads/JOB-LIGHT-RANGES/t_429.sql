SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code='A2536' AND 
t.kind_id=1 AND 
t.production_year<=1985.0 AND 
ci.role_id=2 AND 
ci.nr_order=20.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;