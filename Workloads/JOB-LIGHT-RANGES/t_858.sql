SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1999.0 AND 
t.kind_id=1 AND 
ci.role_id=3 AND 
mc.company_type_id=1 AND 
mi.info_type_id=17 AND 
t.phonetic_code='F2324' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;