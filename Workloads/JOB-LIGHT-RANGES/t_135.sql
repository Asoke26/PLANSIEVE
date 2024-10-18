SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=4248 AND 
t.production_year>=1971.0 AND 
t.kind_id=7 AND 
t.episode_nr>=2.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;