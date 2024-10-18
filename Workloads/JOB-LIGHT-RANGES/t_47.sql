SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=1 AND 
t.production_year=2005.0 AND 
t.kind_id=4 AND 
t.phonetic_code>='I5323' AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;