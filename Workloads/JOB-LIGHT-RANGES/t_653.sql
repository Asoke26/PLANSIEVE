SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code<='S123' AND 
mk.keyword_id=7300 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
ci.nr_order<=80.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;