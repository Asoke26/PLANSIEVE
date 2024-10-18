SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.season_nr<=12.0 AND 
t.phonetic_code<='H56' AND 
mk.keyword_id=2557 AND 
t.production_year>=2001.0 AND 
mi.info_type_id=15 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;