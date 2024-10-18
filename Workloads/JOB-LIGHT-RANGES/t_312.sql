SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=3 AND 
mk.keyword_id=382 AND 
t.phonetic_code='F6231' AND 
t.production_year=1994.0 AND 
ci.role_id=3 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;