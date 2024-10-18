SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.imdb_index<='II' AND 
mc.company_type_id=2 AND 
t.phonetic_code<='C2' AND 
t.production_year=2005.0 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;