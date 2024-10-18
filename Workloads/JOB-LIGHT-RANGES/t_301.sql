SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=926 AND 
t.phonetic_code<='D2163' AND 
ci.role_id=1 AND 
ci.nr_order<=26.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;