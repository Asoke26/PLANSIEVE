SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.imdb_index='I' AND 
t.phonetic_code>='M2162' AND 
t.kind_id=1 AND 
mc.company_type_id=2 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;