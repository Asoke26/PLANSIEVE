SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=2009.0 AND 
t.kind_id=1 AND 
mk.keyword_id=64531 AND 
mi.info_type_id=16 AND 
ci.nr_order=9.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;