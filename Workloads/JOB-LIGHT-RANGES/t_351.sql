SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=2 AND 
t.production_year>=1984.0 AND 
t.phonetic_code<='S365' AND 

t.id = ci.movie_id;