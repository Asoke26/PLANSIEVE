SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year<=2007.0 AND 
ci.role_id=1 AND 
t.kind_id=4 AND 
t.phonetic_code<='F546' AND 

t.id = ci.movie_id;