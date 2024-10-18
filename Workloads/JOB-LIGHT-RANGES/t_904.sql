SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=1973.0 AND 
mk.keyword_id=23554 AND 
t.phonetic_code='L234' AND 
ci.nr_order>=16.0 AND 
mi_idx.info_type_id=100 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;