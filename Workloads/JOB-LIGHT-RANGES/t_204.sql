SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='S2323' AND 
mk.keyword_id=934 AND 
t.production_year>=2007.0 AND 
t.kind_id=1 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;