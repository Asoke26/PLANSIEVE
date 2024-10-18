SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.role_id=10 AND 
mk.keyword_id=731 AND 
t.production_year>=2003.0 AND 
t.phonetic_code>='A5323' AND 
t.kind_id=3 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;