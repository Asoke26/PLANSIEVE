SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code>='F3236' AND 
mk.keyword_id=1382 AND 
t.kind_id=1 AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;