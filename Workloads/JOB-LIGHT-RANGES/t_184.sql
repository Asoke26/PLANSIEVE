SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=1752 AND 
t.production_year>=2008.0 AND 
t.kind_id=1 AND 
t.phonetic_code<='A2364' AND 
mi_idx.info_type_id=100 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;