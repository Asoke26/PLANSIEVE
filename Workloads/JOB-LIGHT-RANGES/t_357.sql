SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code>='U5162' AND 
t.production_year=2009.0 AND 

t.id = ci.movie_id;