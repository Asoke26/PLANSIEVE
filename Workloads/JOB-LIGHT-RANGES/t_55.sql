SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code<='G53' AND 
t.kind_id=1 AND 
mk.keyword_id=6249 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;