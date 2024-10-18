SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code='U5362' AND 
t.production_year>=1987.0 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;