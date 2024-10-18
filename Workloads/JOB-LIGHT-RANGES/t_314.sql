SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=1.0 AND 
t.production_year<=1943.0 AND 
ci.role_id=2 AND 
t.phonetic_code<='P3234' AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;