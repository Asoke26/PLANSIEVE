SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=1983.0 AND 
t.phonetic_code='F2341' AND 
t.kind_id=1 AND 
ci.nr_order>=5.0 AND 
mk.keyword_id=723 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;