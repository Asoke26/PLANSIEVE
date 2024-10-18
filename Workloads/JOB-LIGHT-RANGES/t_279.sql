SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=1770 AND 
ci.role_id=1 AND 
t.kind_id=1 AND 
t.production_year>=2005.0 AND 
ci.nr_order=46.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;