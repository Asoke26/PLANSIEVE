SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=2 AND 
mi.info_type_id=7 AND 
t.series_years='2008-????' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;