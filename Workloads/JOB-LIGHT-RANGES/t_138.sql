SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=2010.0 AND 
t.phonetic_code>='C5216' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;