SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=1 AND 
t.production_year>=2009.0 AND 
t.season_nr>=1.0 AND 

t.id = ci.movie_id;