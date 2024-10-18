SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order=1001.0 AND 
t.episode_nr=10.0 AND 
t.phonetic_code>='N3523' AND 
t.kind_id=7 AND 
t.production_year=1992.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;