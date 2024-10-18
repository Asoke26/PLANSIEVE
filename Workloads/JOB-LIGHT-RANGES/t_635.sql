SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
mk.keyword_id=3081 AND 
t.phonetic_code<='S3621' AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;