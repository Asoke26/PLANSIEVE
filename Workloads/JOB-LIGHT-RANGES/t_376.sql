SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=2 AND 
ci.role_id=2 AND 
t.production_year=1986.0 AND 
t.series_years>='1986-????' AND 
t.phonetic_code='O1531' AND 

t.id = ci.movie_id;