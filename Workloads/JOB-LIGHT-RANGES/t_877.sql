SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=36607 AND 
mi.info_type_id=110 AND 
t.kind_id=1 AND 
t.phonetic_code<='M5636' AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;