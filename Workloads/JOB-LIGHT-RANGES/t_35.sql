SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=2 AND 
t.kind_id=2 AND 
t.production_year=2004.0 AND 
mi_idx.info_type_id=99 AND 
t.series_years>='2004-????' AND 
t.phonetic_code>='G2353' AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;