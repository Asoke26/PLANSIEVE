SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mi_idx.info_type_id=99 AND 
t.production_year<=2008.0 AND 
t.phonetic_code<='R3143' AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;