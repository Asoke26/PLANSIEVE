SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code>='S4231' AND 
ci.nr_order>=100.0 AND 
t.episode_nr=15.0 AND 
t.kind_id=7 AND 
mc.company_type_id=2 AND 
ci.role_id=4 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;