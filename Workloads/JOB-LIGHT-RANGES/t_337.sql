SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr>=1.0 AND 
t.production_year=2003.0 AND 
t.kind_id=7 AND 

t.id = ci.movie_id;