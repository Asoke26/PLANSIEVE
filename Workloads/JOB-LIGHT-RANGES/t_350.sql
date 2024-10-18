SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code='C4365' AND 
t.production_year<=2012.0 AND 
t.kind_id=1 AND 
ci.role_id=1 AND 

t.id = ci.movie_id;