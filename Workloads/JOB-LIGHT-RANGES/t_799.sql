SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=55186 AND 
t.production_year=2012.0 AND 
mi.info_type_id=15 AND 
t.phonetic_code>='M5142' AND 
mc.company_type_id=1 AND 
mi_idx.info_type_id=101 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;