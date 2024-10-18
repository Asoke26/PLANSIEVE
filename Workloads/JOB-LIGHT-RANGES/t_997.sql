SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=6 AND 
mk.keyword_id=103126 AND 
ci.nr_order<=33.0 AND 
t.phonetic_code<='H3514' AND 
mi_idx.info_type_id=100 AND 
ci.role_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;