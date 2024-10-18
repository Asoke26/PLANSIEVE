SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
t.production_year>=2007.0 AND 
mk.keyword_id=12940 AND 
t.phonetic_code>='C6235' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;