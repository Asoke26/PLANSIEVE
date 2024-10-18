SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code='I5653' AND 
ci.role_id=2 AND 
ci.nr_order>=3.0 AND 

t.id = ci.movie_id;