SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code='F5352' AND 
mi_idx.info_type_id=99 AND 
mi.info_type_id=13 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;