SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mc.company_type_id=2 AND 
t.production_year=2005.0 AND 
mk.keyword_id=2241 AND 
mi.info_type_id=13 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;