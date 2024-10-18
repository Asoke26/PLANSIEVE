SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order<=18.0 AND 
t.kind_id=7 AND 
t.episode_nr<=71.0 AND 
ci.role_id=1 AND 
t.phonetic_code>='G6535' AND 
t.production_year>=2009.0 AND 

t.id = ci.movie_id;