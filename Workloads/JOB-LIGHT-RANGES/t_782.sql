SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=101 AND 
t.phonetic_code>='R4534' AND 
mi.info_type_id=16 AND 
t.production_year>=2008.0 AND 
mk.keyword_id=31405 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;