SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE ci.nr_order>=85.0 AND 
mi.info_type_id=7 AND 
ci.role_id=1 AND 
mc.company_type_id=2 AND 
t.phonetic_code>='S5213' AND 
t.production_year>=2008.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;