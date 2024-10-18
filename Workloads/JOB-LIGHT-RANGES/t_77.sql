SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='V2521' AND 
t.production_year>=1999.0 AND 
mk.keyword_id=4226 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;