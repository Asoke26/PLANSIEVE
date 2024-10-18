SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=73059 AND 
mi.info_type_id=13 AND 
t.production_year>=1982.0 AND 
t.kind_id=1 AND 
ci.role_id=10 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;