SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code>='L126' AND 
mc.company_type_id=1 AND 
mk.keyword_id=36567 AND 
t.production_year<=2008.0 AND 
ci.role_id=10 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;