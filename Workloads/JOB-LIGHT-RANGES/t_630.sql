SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.kind_id=1 AND 
ci.nr_order=35.0 AND 
t.imdb_index='I' AND 
t.phonetic_code='P6532' AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;