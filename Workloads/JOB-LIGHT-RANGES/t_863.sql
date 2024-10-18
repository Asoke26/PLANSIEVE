SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code>='A3521' AND 
t.production_year>=1991.0 AND 
mc.company_type_id=1 AND 
mi.info_type_id=17 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;