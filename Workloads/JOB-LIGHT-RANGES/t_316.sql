SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=25621 AND 
ci.role_id=10 AND 
t.production_year=2001.0 AND 
t.phonetic_code<='L3523' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;