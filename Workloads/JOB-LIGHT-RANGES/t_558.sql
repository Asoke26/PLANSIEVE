SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code='D6252' AND 
mi.info_type_id=15 AND 
mk.keyword_id=15719 AND 
mc.company_type_id=1 AND 
t.production_year<=2008.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;