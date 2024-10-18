SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year>=1962.0 AND 
ci.role_id=3 AND 
t.phonetic_code>='B3143' AND 
t.season_nr<=4.0 AND 

t.id = ci.movie_id;