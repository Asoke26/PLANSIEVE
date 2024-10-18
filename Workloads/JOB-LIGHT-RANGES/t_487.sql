SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=101 AND 
t.phonetic_code<='B2354' AND 
t.series_years='2004-2008' AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;