SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
t.kind_id=2 AND 
mi.info_type_id=87 AND 
t.series_years>='1966-1969' AND 
t.phonetic_code<='S3636' AND 
t.production_year>=1966.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;