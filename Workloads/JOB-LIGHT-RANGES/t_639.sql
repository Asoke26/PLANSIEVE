SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE ci.role_id=2 AND 
t.phonetic_code='D13' AND 
mk.keyword_id=2963 AND 
ci.nr_order>=51.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;