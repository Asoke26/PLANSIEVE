SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year=1992.0 AND 
ci.role_id=2 AND 
t.phonetic_code>='W5245' AND 
t.episode_nr>=6.0 AND 

t.id = ci.movie_id;