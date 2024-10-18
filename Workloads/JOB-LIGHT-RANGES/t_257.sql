SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year>=2008.0 AND 
mi.info_type_id=3 AND 
t.phonetic_code<='T6252' AND 
t.series_years<='2008-????' AND 
t.kind_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;