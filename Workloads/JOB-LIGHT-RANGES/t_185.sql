SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year=1952.0 AND 
t.kind_id=1 AND 
t.phonetic_code='P2362' AND 
mk.keyword_id=44002 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;