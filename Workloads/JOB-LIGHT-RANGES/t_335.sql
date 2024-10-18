SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
t.production_year<=2010.0 AND 
t.phonetic_code>='O4162' AND 

t.id = ci.movie_id;