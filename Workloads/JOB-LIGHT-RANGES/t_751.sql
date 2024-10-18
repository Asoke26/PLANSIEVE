SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code>='D5' AND 
t.production_year<=2006.0 AND 
mc.company_type_id=1 AND 
t.kind_id=7 AND 
t.season_nr<=5.0 AND 
t.episode_nr>=4.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;