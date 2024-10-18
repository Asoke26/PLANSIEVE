SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=16 AND 
mc.company_type_id=1 AND 
t.production_year=1995.0 AND 
t.phonetic_code<='X24' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;