SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year=1994.0 AND 
mk.keyword_id=323 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code<='S3623' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;