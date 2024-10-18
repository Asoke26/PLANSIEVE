SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=1 AND 
t.production_year<=2005.0 AND 
t.phonetic_code>='T5216' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;