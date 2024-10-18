SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=768 AND 
t.production_year>=2002.0 AND 
t.kind_id=3 AND 
t.phonetic_code<='D323' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;