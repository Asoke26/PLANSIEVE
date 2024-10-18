SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.season_nr=4.0 AND 
mc.company_type_id=1 AND 
t.production_year>=2002.0 AND 
t.episode_nr>=21.0 AND 
t.kind_id=7 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;