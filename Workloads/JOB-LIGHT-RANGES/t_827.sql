SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=10925 AND 
mc.company_type_id=1 AND 
t.phonetic_code='R3621' AND 
t.production_year=1981.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;