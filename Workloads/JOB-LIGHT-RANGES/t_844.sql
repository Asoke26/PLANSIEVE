SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=103 AND 
t.phonetic_code<='P6313' AND 
mc.company_type_id=2 AND 
t.kind_id=1 AND 
mk.keyword_id=2564 AND 
t.production_year>=1942.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;