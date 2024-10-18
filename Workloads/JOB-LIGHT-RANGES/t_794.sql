SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=2128 AND 
t.production_year=2010.0 AND 
mi.info_type_id=16 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;