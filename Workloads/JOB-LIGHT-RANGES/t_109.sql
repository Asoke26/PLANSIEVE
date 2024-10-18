SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code>='S5414' AND 
t.kind_id=2 AND 
mk.keyword_id=1738 AND 
t.production_year=2001.0 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;