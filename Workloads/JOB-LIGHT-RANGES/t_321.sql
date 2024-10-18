SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code>='P6153' AND 
t.kind_id=1 AND 
t.production_year<=1975.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;