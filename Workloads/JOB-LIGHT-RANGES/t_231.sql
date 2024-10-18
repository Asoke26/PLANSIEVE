SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year>=1937.0 AND 
mc.company_type_id=2 AND 
t.phonetic_code<='G4562' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;