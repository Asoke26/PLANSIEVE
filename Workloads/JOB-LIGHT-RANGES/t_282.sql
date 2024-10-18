SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code='F6142' AND 
ci.role_id=3 AND 
t.production_year>=1993.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;