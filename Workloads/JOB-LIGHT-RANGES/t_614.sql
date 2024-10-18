SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code>='G2363' AND 
t.production_year=2010.0 AND 
ci.role_id=10 AND 
t.kind_id=1 AND 
mk.keyword_id=1810 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;