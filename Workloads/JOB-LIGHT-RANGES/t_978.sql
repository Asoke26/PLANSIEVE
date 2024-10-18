SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=13617 AND 
t.production_year>=2000.0 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code='D6353' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;