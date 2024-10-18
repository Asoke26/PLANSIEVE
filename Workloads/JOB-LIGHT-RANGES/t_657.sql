SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.imdb_index<='I' AND 
t.phonetic_code>='C62' AND 
ci.role_id=10 AND 
t.production_year>=2004.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;