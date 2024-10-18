SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.production_year<=1969.0 AND 
t.kind_id=7 AND 
mc.company_type_id=2 AND 
t.phonetic_code>='L1532' AND 
t.season_nr>=1.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;