SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=100 AND 
t.production_year<=1999.0 AND 
t.kind_id=2 AND 
t.series_years='1999-????' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;