SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=100 AND 
t.series_years='1995-1999' AND 
mk.keyword_id=6104 AND 
t.production_year=1995.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;