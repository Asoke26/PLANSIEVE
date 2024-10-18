SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year<=1998.0 AND 
t.kind_id=7 AND 
t.phonetic_code='Z5345' AND 

t.id = ci.movie_id;