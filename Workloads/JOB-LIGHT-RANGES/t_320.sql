SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.season_nr>=1.0 AND 
ci.nr_order<=1.0 AND 
t.episode_nr=5.0 AND 
t.kind_id=7 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;