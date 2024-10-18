SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE ci.role_id=2 AND 
ci.nr_order<=19.0 AND 
t.phonetic_code>='T6141' AND 
t.production_year>=2011.0 AND 
mk.keyword_id=85566 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;