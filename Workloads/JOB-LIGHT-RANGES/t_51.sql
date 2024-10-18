SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.phonetic_code<='G6515' AND 
mc.company_type_id=1 AND 
t.production_year<=1981.0 AND 
t.season_nr<=8.0 AND 
t.kind_id=7 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;