SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mi.info_type_id=17 AND 
t.production_year<=1939.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code<='G5353' AND 
ci.role_id=10 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;