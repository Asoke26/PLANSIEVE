SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year<=1990.0 AND 
t.phonetic_code>='G3136' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;