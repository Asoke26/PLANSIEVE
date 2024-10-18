SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code>='R5232' AND 
ci.role_id=1 AND 
mk.keyword_id=2088 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;