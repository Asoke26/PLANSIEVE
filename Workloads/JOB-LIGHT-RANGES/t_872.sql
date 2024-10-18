SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=992 AND 
ci.role_id=9 AND 
mi.info_type_id=15 AND 
t.phonetic_code<='B15' AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;