SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE mc.company_type_id=1 AND 
t.production_year>=2007.0 AND 
t.phonetic_code<='D4316' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;