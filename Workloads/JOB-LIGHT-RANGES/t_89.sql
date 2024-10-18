SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.production_year<=2012.0 AND 
t.kind_id=7 AND 
t.phonetic_code<='L2326' AND 
mc.company_type_id=1 AND 
mk.keyword_id=843 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;