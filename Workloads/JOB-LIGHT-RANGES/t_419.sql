SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.season_nr>=2.0 AND 
t.phonetic_code<='C5326' AND 
t.production_year=2009.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;