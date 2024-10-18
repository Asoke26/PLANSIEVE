SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.production_year>=1967.0 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code<='B5324' AND 
mk.keyword_id=72708 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;