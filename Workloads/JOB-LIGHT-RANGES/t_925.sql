SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=2 AND 
mk.keyword_id=1220 AND 
ci.role_id=5 AND 
t.series_years<='2002-2006' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;