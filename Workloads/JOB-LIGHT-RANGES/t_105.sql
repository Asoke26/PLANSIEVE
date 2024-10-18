SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=2 AND 
t.production_year>=2002.0 AND 
t.kind_id=1 AND 
mk.keyword_id=12589 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;