SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code<='H2125' AND 
t.production_year<=2009.0 AND 
mk.keyword_id=1116 AND 
ci.role_id=4 AND 
t.kind_id=7 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;