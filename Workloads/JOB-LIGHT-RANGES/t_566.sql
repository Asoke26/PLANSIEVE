SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
mi.info_type_id=46 AND 
t.production_year<=1996.0 AND 
t.kind_id=1 AND 
mk.keyword_id=1714 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;