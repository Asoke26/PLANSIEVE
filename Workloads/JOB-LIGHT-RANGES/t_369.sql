SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year=1958.0 AND 
t.season_nr=5.0 AND 
t.phonetic_code>='S3652' AND 
ci.role_id=8 AND 
t.episode_nr<=26.0 AND 

t.id = ci.movie_id;