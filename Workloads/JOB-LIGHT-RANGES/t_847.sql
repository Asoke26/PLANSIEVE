SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code>='L6313' AND 
t.production_year>=2001.0 AND 
ci.role_id=10 AND 
mk.keyword_id=7383 AND 
mi.info_type_id=18 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;