SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.production_year<=2008.0 AND 
t.phonetic_code<='N2425' AND 
t.kind_id=3 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;