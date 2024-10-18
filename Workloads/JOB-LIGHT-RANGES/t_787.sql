SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=569 AND 
t.phonetic_code>='Q42' AND 
mc.company_type_id=1 AND 
t.production_year>=2000.0 AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;