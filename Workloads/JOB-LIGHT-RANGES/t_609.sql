SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.production_year=2007.0 AND 
ci.role_id=10 AND 
mk.keyword_id=33607 AND 
mc.company_type_id=2 AND 
t.kind_id=1 AND 
t.phonetic_code>='I5343' AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;