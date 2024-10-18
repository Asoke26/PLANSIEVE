SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE mc.company_type_id=2 AND 
t.episode_nr<=3.0 AND 
t.season_nr<=1.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;