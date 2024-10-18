SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=27.0 AND 
t.production_year<=2001.0 AND 
t.phonetic_code>='T6352' AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;