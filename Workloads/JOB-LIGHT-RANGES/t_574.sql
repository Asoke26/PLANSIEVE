SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=6019 AND 
t.phonetic_code>='U1' AND 
mi.info_type_id=15 AND 
t.kind_id=1 AND 
t.production_year=2009.0 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;