SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='S4523' AND 
t.kind_id=1 AND 
mi.info_type_id=16 AND 
mc.company_type_id=1 AND 
mk.keyword_id=119971 AND 
t.production_year>=1976.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;