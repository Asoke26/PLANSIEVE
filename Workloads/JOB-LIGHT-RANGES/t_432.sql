SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year<=2004.0 AND 
mc.company_type_id=1 AND 
ci.role_id=1 AND 
t.phonetic_code>='J2' AND 
t.imdb_index='I' AND 
t.kind_id=3 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;