SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code>='S2135' AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
mi.info_type_id=17 AND 
mk.keyword_id=3617 AND 
t.production_year>=2004.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;