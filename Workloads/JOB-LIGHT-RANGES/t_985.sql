SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=8797 AND 
ci.nr_order<=27.0 AND 
t.phonetic_code>='U5363' AND 
ci.role_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;