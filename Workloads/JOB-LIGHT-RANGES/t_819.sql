SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=20868 AND 
t.production_year>=2003.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;