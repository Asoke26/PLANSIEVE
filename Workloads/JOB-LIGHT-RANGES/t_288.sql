SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='A5625' AND 
ci.nr_order<=7.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;