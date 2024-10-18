SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=2 AND 
t.phonetic_code='W6435' AND 
t.production_year=2012.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;