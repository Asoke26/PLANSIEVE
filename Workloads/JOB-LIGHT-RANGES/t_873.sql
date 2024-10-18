SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=2003.0 AND 
mi.info_type_id=15 AND 
mc.company_type_id=1 AND 
t.phonetic_code='L6313' AND 
mk.keyword_id=24405 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;