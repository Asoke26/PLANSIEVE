SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.production_year=2009.0 AND 
ci.nr_order=15.0 AND 
t.phonetic_code<='J5213' AND 
mk.keyword_id=10833 AND 
mc.company_type_id=1 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;