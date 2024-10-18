SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year>=2011.0 AND 
t.phonetic_code<='W5342' AND 
mk.keyword_id=104247 AND 
mi.info_type_id=7 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;