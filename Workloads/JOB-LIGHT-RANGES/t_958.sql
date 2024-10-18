SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.nr_order=18.0 AND 
mi_idx.info_type_id=101 AND 
t.production_year>=2010.0 AND 
t.kind_id=1 AND 
t.phonetic_code<='K4213' AND 
ci.role_id=2 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;