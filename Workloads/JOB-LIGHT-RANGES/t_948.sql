SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=6294 AND 
ci.role_id=1 AND 
t.production_year=1998.0 AND 
t.phonetic_code<='L3234' AND 
mi_idx.info_type_id=99 AND 
ci.nr_order<=7.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;