SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.kind_id=4 AND 
t.phonetic_code<='S3524' AND 
mc.company_type_id=1 AND 
t.production_year>=1987.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;