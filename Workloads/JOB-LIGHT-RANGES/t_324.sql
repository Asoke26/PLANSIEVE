SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code<='A5625' AND 
t.kind_id=1 AND 
t.production_year<=1995.0 AND 
ci.role_id=10 AND 
mk.keyword_id=245 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;