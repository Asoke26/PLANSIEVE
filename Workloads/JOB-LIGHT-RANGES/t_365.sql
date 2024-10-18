SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year=2012.0 AND 
t.phonetic_code<='S4126' AND 
ci.role_id=1 AND 

t.id = ci.movie_id;