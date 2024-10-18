SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=100 AND 
mc.company_type_id=2 AND 
t.series_years<='2003-2013' AND 
t.phonetic_code='A6231' AND 
t.kind_id=2 AND 
t.production_year>=2003.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;