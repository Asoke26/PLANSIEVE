SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=5269 AND 
t.phonetic_code='F6314' AND 
t.production_year=2007.0 AND 
ci.role_id=10 AND 
mc.company_type_id=1 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;