SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.production_year>=1939.0 AND 
t.phonetic_code>='F4235' AND 
ci.role_id=4 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;