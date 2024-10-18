SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE ci.role_id=2 AND 
mk.keyword_id=16438 AND 
t.kind_id=1 AND 
t.production_year=2009.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code>='H5353' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;