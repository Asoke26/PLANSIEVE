SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=2 AND 
ci.role_id=2 AND 
mk.keyword_id=4021 AND 
t.phonetic_code<='K32' AND 
t.production_year=1995.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;