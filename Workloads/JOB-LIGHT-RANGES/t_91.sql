SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=2 AND 
mk.keyword_id=1716 AND 
t.kind_id=1 AND 
t.production_year>=2008.0 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;