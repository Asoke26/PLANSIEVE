SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.imdb_index<='I' AND 
t.phonetic_code>='T316' AND 
ci.role_id=10 AND 
t.production_year=2010.0 AND 
t.kind_id=1 AND 
mi.info_type_id=107 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;