SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code>='P142' AND 
ci.role_id=10 AND 
t.kind_id=1 AND 
t.production_year=2013.0 AND 

t.id = ci.movie_id;