SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi.info_type_id=9 AND 
mk.keyword_id=141 AND 
t.kind_id=3 AND 
mc.company_type_id=1 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code<='O5132' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;