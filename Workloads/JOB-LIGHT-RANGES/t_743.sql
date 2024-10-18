SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code<='N2356' AND 
t.production_year<=2010.0 AND 
mi.info_type_id=5 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;