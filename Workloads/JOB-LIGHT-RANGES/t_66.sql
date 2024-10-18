SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=7 AND 
mk.keyword_id=8281 AND 
t.phonetic_code='P43' AND 
t.production_year=1978.0 AND 
mc.company_type_id=1 AND 
t.season_nr<=1.0 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;