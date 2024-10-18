SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.production_year>=1958.0 AND 
ci.nr_order<=88.0 AND 
t.phonetic_code>='S3121' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;